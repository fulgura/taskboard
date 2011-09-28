@STATIC;1.0;p;15;AppController.jt;912;@STATIC;1.0;I;21;Foundation/CPObject.ji;12;StickyNote.ji;11;Taskboard.ji;13;WindowUtils.jt;817;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("StickyNote.j",YES);
objj_executeFile("Taskboard.j",YES);
objj_executeFile("WindowUtils.j",YES);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask),_7=objj_msgSend(_6,"contentView");
var _8=objj_msgSend(objj_msgSend(Taskboard,"alloc"),"initWithFrame:",CGRectMake(0,0,1024,600));
objj_msgSend(_8,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_7,"addSubview:",_8);
objj_msgSend(_6,"orderFront:",_3);
}
})]);
p;11;Container.jt;528;@STATIC;1.0;I;14;AppKit/CPBox.ji;12;StickyNote.jt;474;
objj_executeFile("AppKit/CPBox.j",NO);
objj_executeFile("StickyNote.j",YES);
var _1=objj_allocateClassPair(CPBox,"Container"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("Container").super_class},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
return _3;
}
})]);
p;22;LPMultiLineTextField.jt;8178;@STATIC;1.0;I;20;AppKit/CPTextField.jt;8134;
objj_executeFile("AppKit/CPTextField.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPTextField,"LPMultiLineTextField"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_DOMTextareaElement"),new objj_ivar("_stringValue"),new objj_ivar("_hideOverflow")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("_DOMTextareaElement"),function(_4,_5){
with(_4){
if(!_DOMTextareaElement){
_DOMTextareaElement=document.createElement("textarea");
_DOMTextareaElement.style.position="absolute";
_DOMTextareaElement.style.background="none";
_DOMTextareaElement.style.border="0";
_DOMTextareaElement.style.outline="0";
_DOMTextareaElement.style.zIndex="100";
_DOMTextareaElement.style.resize="none";
_DOMTextareaElement.style.padding="0";
_DOMTextareaElement.style.margin="0";
_DOMTextareaElement.onblur=function(){
objj_msgSend(objj_msgSend(_1,"window"),"makeFirstResponder:",nil);
_1=nil;
};
_4._DOMElement.appendChild(_DOMTextareaElement);
}
return _DOMTextareaElement;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("LPMultiLineTextField").super_class},"initWithFrame:",_8)){
}
return _6;
}
}),new objj_method(sel_getUid("isScrollable"),function(_9,_a){
with(_9){
return !_hideOverflow;
}
}),new objj_method(sel_getUid("setScrollable:"),function(_b,_c,_d){
with(_b){
_hideOverflow=!_d;
}
}),new objj_method(sel_getUid("setEditable:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"_DOMTextareaElement").style.cursor=_10?"cursor":"default";
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("LPMultiLineTextField").super_class},"setEditable:",_10);
}
}),new objj_method(sel_getUid("selectText:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_11,"_DOMTextareaElement").select();
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_14,_15){
with(_14){
objj_msgSendSuper({receiver:_14,super_class:objj_getClass("LPMultiLineTextField").super_class},"layoutSubviews");
var _16=objj_msgSend(_14,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
objj_msgSend(_16,"setHidden:",YES);
var _17=objj_msgSend(_14,"_DOMTextareaElement"),_18=objj_msgSend(_14,"currentValueForThemeAttribute:","content-inset"),_19=objj_msgSend(_14,"bounds");
_17.style.top=_18.top+"px";
_17.style.bottom=_18.bottom+"px";
_17.style.left=_18.left+"px";
_17.style.right=_18.right+"px";
_17.style.width=(CGRectGetWidth(_19)-_18.left-_18.right)+"px";
_17.style.height=(CGRectGetHeight(_19)-_18.top-_18.bottom)+"px";
_17.style.color=objj_msgSend(objj_msgSend(_14,"currentValueForThemeAttribute:","text-color"),"cssString");
_17.style.font=objj_msgSend(objj_msgSend(_14,"currentValueForThemeAttribute:","font"),"cssString");
switch(objj_msgSend(_14,"currentValueForThemeAttribute:","alignment")){
case CPLeftTextAlignment:
_17.style.textAlign="left";
break;
case CPJustifiedTextAlignment:
_17.style.textAlign="justify";
break;
case CPCenterTextAlignment:
_17.style.textAlign="center";
break;
case CPRightTextAlignment:
_17.style.textAlign="right";
break;
default:
_17.style.textAlign="left";
}
_17.value=_stringValue||"";
if(_hideOverflow){
_17.style.overflow="hidden";
}
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=objj_msgSend(_1a,"_DOMTextareaElement");
_1d.scrollLeft+=_1c._deltaX;
_1d.scrollTop+=_1c._deltaY;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_1e,_1f,_20){
with(_1e){
if(objj_msgSend(_1e,"isEditable")&&objj_msgSend(_1e,"isEnabled")){
objj_msgSend(objj_msgSend(objj_msgSend(_1e,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}else{
objj_msgSendSuper({receiver:_1e,super_class:objj_getClass("LPMultiLineTextField").super_class},"mouseDown:",_20);
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_21,_22,_23){
with(_21){
return objj_msgSend(objj_msgSend(objj_msgSend(_23,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("keyDown:"),function(_24,_25,_26){
with(_24){
if(objj_msgSend(_26,"keyCode")===CPTabKeyCode){
if(objj_msgSend(_26,"modifierFlags")&CPShiftKeyMask){
objj_msgSend(objj_msgSend(_24,"window"),"selectPreviousKeyView:",_24);
}else{
objj_msgSend(objj_msgSend(_24,"window"),"selectNextKeyView:",_24);
}
if(objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"firstResponder"),"respondsToSelector:",sel_getUid("selectText:"))){
objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"firstResponder"),"selectText:",_24);
}
objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",NO);
}else{
objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("keyUp:"),function(_27,_28,_29){
with(_27){
if(_stringValue!==objj_msgSend(_27,"stringValue")){
_stringValue=objj_msgSend(_27,"stringValue");
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_27,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_27,nil));
}
objj_msgSend(_27,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_27,nil));
}
objj_msgSend(objj_msgSend(objj_msgSend(_27,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(objj_msgSend(objj_msgSend(_2a,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
return YES;
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_2d,_2e){
with(_2d){
_stringValue=objj_msgSend(_2d,"stringValue");
objj_msgSend(_2d,"setThemeState:",CPThemeStateEditing);
setTimeout(function(){
objj_msgSend(_2d,"_DOMTextareaElement").focus();
_1=_2d;
},0);
objj_msgSend(_2d,"textDidFocus:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidFocusNotification,_2d,nil));
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_2f,_30){
with(_2f){
objj_msgSend(_2f,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_2f,"setStringValue:",objj_msgSend(_2f,"stringValue"));
objj_msgSend(_2f,"_DOMTextareaElement").blur();
if(_isEditing){
_isEditing=NO;
objj_msgSend(_2f,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_2f,nil));
if(objj_msgSend(_2f,"sendsActionOnEndEditing")){
objj_msgSend(_2f,"sendAction:to:",objj_msgSend(_2f,"action"),objj_msgSend(_2f,"target"));
}
}
objj_msgSend(_2f,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_2f,nil));
return YES;
}
}),new objj_method(sel_getUid("stringValue"),function(_31,_32){
with(_31){
return (!!_DOMTextareaElement)?_DOMTextareaElement.value:"";
}
}),new objj_method(sel_getUid("setStringValue:"),function(_33,_34,_35){
with(_33){
_stringValue=_35;
objj_msgSend(_33,"setNeedsLayout");
}
})]);
var _36="LPMultiLineTextFieldStringValueKey",_37="LPMultiLineTextFieldScrollableKey";
var _2=objj_getClass("LPMultiLineTextField");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"LPMultiLineTextField\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_38,_39,_3a){
with(_38){
if(_38=objj_msgSendSuper({receiver:_38,super_class:objj_getClass("LPMultiLineTextField").super_class},"initWithCoder:",_3a)){
objj_msgSend(_38,"setStringValue:",objj_msgSend(_3a,"decodeObjectForKey:",_36));
objj_msgSend(_38,"setScrollable:",objj_msgSend(_3a,"decodeBoolForKey:",_37));
}
return _38;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3b,_3c,_3d){
with(_3b){
objj_msgSendSuper({receiver:_3b,super_class:objj_getClass("LPMultiLineTextField").super_class},"encodeWithCoder:",_3d);
objj_msgSend(_3d,"encodeObject:forKey:",_stringValue,_36);
objj_msgSend(_3d,"encodeBool:forKey:",(_hideOverflow?NO:YES),_37);
}
})]);
p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;12;StatusTask.jt;4247;@STATIC;1.0;t;4228;
StatusTaskDragType="StatusTaskDragType";
var _1=objj_allocateClassPair(CPBox,"StatusTask"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("status"),new objj_ivar("color"),new objj_ivar("gradient"),new objj_ivar("color1"),new objj_ivar("color2"),new objj_ivar("orientation")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("status"),function(_3,_4){
with(_3){
return status;
}
}),new objj_method(sel_getUid("setStatus:"),function(_5,_6,_7){
with(_5){
status=_7;
}
}),new objj_method(sel_getUid("color"),function(_8,_9){
with(_8){
return color;
}
}),new objj_method(sel_getUid("setColor:"),function(_a,_b,_c){
with(_a){
color=_c;
}
}),new objj_method(sel_getUid("orientation"),function(_d,_e){
with(_d){
return orientation;
}
}),new objj_method(sel_getUid("setOrientation:"),function(_f,_10,_11){
with(_f){
orientation=_11;
}
}),new objj_method(sel_getUid("initWithFrame:status:color:"),function(_12,_13,_14,_15,_16){
with(_12){
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("StatusTask").super_class},"initWithFrame:",_14);
if(_12){
color=_16;
status=_15;
var _17=[objj_msgSend(_12,"bounds").size.width],_18=[objj_msgSend(_12,"bounds").size.height];
objj_msgSend(_12,"setColor1:",color);
objj_msgSend(_12,"setColor2:",color);
objj_msgSend(_12,"setBorderType:",CPLineBorder);
objj_msgSend(_12,"setBorderColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_12,"setCornerRadius:",3);
var _19=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,300,0));
objj_msgSend(_19,"setStringValue:",status);
objj_msgSend(_19,"setEditable:",NO);
objj_msgSend(_19,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_19,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",10));
objj_msgSend(_19,"sizeToFit");
objj_msgSend(_12,"addSubview:",_19);
}
return _12;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=objj_msgSend(_1a,"convertPoint:fromView:",objj_msgSend(_1c,"locationInWindow"),nil),_1e=CGRectMake(0,0,30,30);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",StatusTaskDragType),_1a);
objj_msgSend(_1a,"dragView:at:offset:event:pasteboard:source:slideBack:",objj_msgSend(_1a,"mutableCopy"),CPPointMakeZero(),CPPointMake(0,0),_1c,nil,_1a,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_1f,_20,_21,_22){
with(_1f){
if(_22==StatusTaskDragType){
objj_msgSend(_21,"setData:forType:",objj_msgSend(_1f,"mutableCopy"),_22);
}
}
}),new objj_method(sel_getUid("setColor1:"),function(_23,_24,_25){
with(_23){
color1=_25;
if(color2){
}
objj_msgSend(_23,"createGradient");
}
}),new objj_method(sel_getUid("setColor2:"),function(_26,_27,_28){
with(_26){
color2=_28;
if(color1){
}
objj_msgSend(_26,"createGradient");
}
}),new objj_method(sel_getUid("createGradient"),function(_29,_2a){
with(_29){
gradient=CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(),[objj_msgSend(color1,"redComponent"),objj_msgSend(color1,"greenComponent"),objj_msgSend(color1,"blueComponent"),objj_msgSend(color1,"alphaComponent"),objj_msgSend(color2,"redComponent"),objj_msgSend(color2,"greenComponent"),objj_msgSend(color2,"blueComponent"),objj_msgSend(color2,"alphaComponent")],[0,1],2);
}
}),new objj_method(sel_getUid("drawRect:"),function(_2b,_2c,_2d){
with(_2b){
if(gradient){
var _2e;
if(orientation){
_2e=(orientation=="vertical")?CGPointMake(CGRectGetWidth(_2d),0):CGPointMake(0,CGRectGetHeight(_2d));
}else{
_2e=CGPointMake(0,CGRectGetHeight(_2d));
}
var _2f=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextAddRect(_2f,_2d);
CGContextDrawLinearGradient(_2f,gradient,CGPointMake(0,0),_2e);
}
}
}),new objj_method(sel_getUid("mutableCopy"),function(_30,_31){
with(_30){
return objj_msgSend(objj_msgSend(StatusTask,"alloc"),"initWithFrame:status:color:",objj_msgSend(_30,"frame"),objj_msgSend(_30,"status"),objj_msgSend(_30,"color"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("withFrame:status:color:"),function(_32,_33,_34,_35,_36){
with(_32){
return objj_msgSend(objj_msgSend(StatusTask,"alloc"),"initWithFrame:status:color:",_34,_35,_36);
}
})]);
p;12;StickyNote.jt;7311;@STATIC;1.0;i;22;LPMultiLineTextField.jt;7265;
objj_executeFile("LPMultiLineTextField.j",YES);
StickyNoteDragType="StickyNoteDragType";
var _1=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",1,1,0,0.8),_2=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",0,0,1,0.7);
var _3=objj_allocateClassPair(CPView,"StickyNote"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("dragLocation"),new objj_ivar("label"),new objj_ivar("task"),new objj_ivar("status")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("task"),function(_5,_6){
with(_5){
return task;
}
}),new objj_method(sel_getUid("setTask:"),function(_7,_8,_9){
with(_7){
task=_9;
}
}),new objj_method(sel_getUid("status"),function(_a,_b){
with(_a){
return status;
}
}),new objj_method(sel_getUid("setStatus:"),function(_c,_d,_e){
with(_c){
status=_e;
}
}),new objj_method(sel_getUid("initWithFrame:task:"),function(_f,_10,_11,_12){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("StickyNote").super_class},"initWithFrame:",_11);
if(_f){
var _13=CGRectGetWidth(objj_msgSend(_f,"bounds")),_14=CGRectGetHeight(objj_msgSend(_f,"bounds"));
task=_12;
var _15=objj_msgSend(objj_msgSend(LPMultiLineTextField,"alloc"),"initWithFrame:",CGRectMake(0,_14*(1/3),_13,_14*(2/3)));
objj_msgSend(_15,"setStringValue:",objj_msgSend(task,"title"));
objj_msgSend(_15,"setEditable:",YES);
objj_msgSend(_15,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_15,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_15,"setCenter:",CGPointMake(_13/2,_14/2));
objj_msgSend(_f,"addSubview:",_15);
objj_msgSend(_f,"setBackgroundColor:",objj_msgSend(_f,"customBackgroundImageColor"));
objj_msgSend(_f,"setAlphaValue:",0.9);
objj_msgSend(_f,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",StatusTaskDragType));
}
return _f;
}
}),new objj_method(sel_getUid("customBackgroundImageColor"),function(_16,_17){
with(_16){
var _18=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_16,"class")),_19=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","top-left.png"),CPSizeMake(10,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","top.png"),CPSizeMake(1,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","top-right.png"),CPSizeMake(10,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","left.png"),CPSizeMake(10,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","center.png"),CPSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","right.png"),CPSizeMake(10,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","bottom-left.png"),CPSizeMake(10,12)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","bottom.png"),CPSizeMake(1,12)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_18,"pathForResource:","bottom-right.png"),CPSizeMake(10,12)),]));
return _19;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_1a,_1b,_1c){
with(_1a){
editedOrigin=objj_msgSend(_1a,"frame").origin;
dragLocation=objj_msgSend(_1c,"locationInWindow");
objj_msgSend(objj_msgSend(_1a,"superview"),"addSubview:",_1a);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_1d,_1e,_1f){
with(_1d){
var _20=objj_msgSend(_1f,"locationInWindow"),_21=objj_msgSend(_1d,"frame").origin;
objj_msgSend(_1d,"setFrameOrigin:",CGPointMake(_21.x+_20.x-dragLocation.x,_21.y+_20.y-dragLocation.y));
dragLocation=_20;
var _22=objj_msgSend(objj_msgSend(_1d,"superview"),"convertPoint:fromView:",objj_msgSend(_1f,"locationInWindow"),nil),_23=objj_msgSend(_1d,"_rowAtPoint:",_22);
if(_23==0){
objj_msgSend(task,"setStatus:",NotStartedStatusTask);
}
if(_23==1){
objj_msgSend(task,"setStatus:",InProgresStatusTask);
}
if(_23==2){
objj_msgSend(task,"setStatus:",FinishedtatusTask);
}
}
}),new objj_method(sel_getUid("_rowAtPoint:"),function(_24,_25,_26){
with(_24){
var _27=CGRectGetWidth(objj_msgSend(objj_msgSend(_24,"superview"),"bounds"))/3;
console.log("point ",_26.x," width ",_27);
var _28=FLOOR(_26.x/_27);
return _28;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_29,_2a,_2b){
with(_29){
var _2c=CGRectGetWidth(objj_msgSend(_29,"bounds")),_2d=CGRectGetHeight(objj_msgSend(_29,"bounds"));
objj_msgSend(_29,"setActive:",NO);
var _2e=objj_msgSend(_2b,"draggingPasteboard");
if(!objj_msgSend(_2e,"availableTypeFromArray:",[StatusTaskDragType])){
return NO;
}
var _2f=objj_msgSend(_2e,"dataForType:",StatusTaskDragType);
objj_msgSend(_2f,"setCenter:",CGPointMake(_2c/2,_2d/2));
objj_msgSend(_29,"addSubview:",_2f);
}
}),new objj_method(sel_getUid("draggingEntered:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_30,"setActive:",YES);
}
}),new objj_method(sel_getUid("draggingExited:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"setActive:",NO);
}
}),new objj_method(sel_getUid("setActive:"),function(_36,_37,_38){
with(_36){
isActive=_38;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("themeClass"),function(_39,_3a){
with(_39){
return "sticky-view";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_3b,_3c){
with(_3b){
var _3d=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_3b,"class")),_3e=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","top-left.png"),CPSizeMake(10,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","top.png"),CPSizeMake(1,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","top-right.png"),CPSizeMake(10,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","left.png"),CPSizeMake(10,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","center.png"),CPSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","right.png"),CPSizeMake(10,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","bottom-left.png"),CPSizeMake(10,12)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","bottom.png"),CPSizeMake(1,12)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3d,"pathForResource:","bottom-right.png"),CPSizeMake(10,12)),]));
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_3e,objj_msgSend(CPColor,"whiteColor"),0.8],["background-color","text-color","alpha-value"]);
}
})]);
p;6;Task.jt;1921;@STATIC;1.0;t;1902;
NotStartedStatusTask="NotStartedStatusTask";
InProgresStatusTask="InProgresStatusTask";
FinishedtatusTask="FinishedtatusTask";
var _1=objj_allocateClassPair(CPObject,"Task"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("title"),new objj_ivar("status")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("title"),function(_3,_4){
with(_3){
return title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_5,_6,_7){
with(_5){
title=_7;
}
}),new objj_method(sel_getUid("status"),function(_8,_9){
with(_8){
return status;
}
}),new objj_method(sel_getUid("setStatus:"),function(_a,_b,_c){
with(_a){
status=_c;
}
}),new objj_method(sel_getUid("initWithTitle:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSend(_d,"initWithTitle:status:",_f,NotStartedStatusTask);
return _d;
}
}),new objj_method(sel_getUid("initWithTitle:status:"),function(_10,_11,_12,_13){
with(_10){
if(_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("Task").super_class},"init")){
title=_12;
status=_13;
}
return _10;
}
}),new objj_method(sel_getUid("initWithJSONObject:"),function(_14,_15,_16){
with(_14){
_14=objj_msgSend(_14,"initWithTitle:status:",_16.title,_16.status);
return _14;
}
}),new objj_method(sel_getUid("description"),function(_17,_18){
with(_17){
return objj_msgSend(objj_msgSend(CPString,"alloc"),"initWithFormat:","Title: %@ status:{ %@ }",title,status);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("taskWithTitle:"),function(_19,_1a,_1b){
with(_19){
return objj_msgSend(objj_msgSend(Task,"alloc"),"initWithTitle:",_1b);
}
}),new objj_method(sel_getUid("initWithJSONObjects:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
for(var i=0;i<_1e.length;i++){
var _20=objj_msgSend(objj_msgSend(Task,"alloc"),"initWithJSONObject:",_1e[i]);
console.log("Task",_20);
objj_msgSend(_1f,"addObject:",_20);
}
return _1f;
}
})]);
p;11;Taskboard.jt;19972;@STATIC;1.0;I;14;AppKit/CPBox.ji;6;Task.ji;6;User.ji;12;StatusTask.ji;13;TaskService.jt;19878;
objj_executeFile("AppKit/CPBox.j",NO);
objj_executeFile("Task.j",YES);
objj_executeFile("User.j",YES);
objj_executeFile("StatusTask.j",YES);
objj_executeFile("TaskService.j",YES);
var _1=objj_allocateClassPair(CPBox,"Taskboard"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("userList")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("userList"),function(_3,_4){
with(_3){
return userList;
}
}),new objj_method(sel_getUid("setUserList:"),function(_5,_6,_7){
with(_5){
userList=_7;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
CPLog.trace("Creating a new "+objj_msgSend(_8,"class")+" CGRect("+_a.origin.x+","+_a.origin.y+","+_a.size.width+","+_a.size.height+")");
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("Taskboard").super_class},"initWithFrame:",_a);
if(_8){
var _b=[objj_msgSend(_8,"bounds").size.width],_c=[objj_msgSend(_8,"bounds").size.height];
objj_msgSend(_8,"setBorderType:",CPLineBorder);
objj_msgSend(_8,"setBorderColor:",objj_msgSend(CPColor,"lightGrayColor"));
userList=objj_msgSend(_8,"createMockUserList");
var _d=objj_msgSend(objj_msgSend(TaskboardToolBar,"alloc"),"initWithFrame:",CGRectMake(1,1,CGRectGetWidth(objj_msgSend(_8,"bounds"))-2,110));
objj_msgSend(_8,"addSubview:",_d);
var _e=objj_msgSend(objj_msgSend(TaskboardNavigationArea,"alloc"),"initWithFrame:",CGRectMake(1,CGRectGetHeight(objj_msgSend(_d,"bounds")),100,CGRectGetHeight(objj_msgSend(_8,"bounds"))));
objj_msgSend(_e,"setAutoresizingMask:",CPViewHeightSizable|CPViewMaxXMargin);
objj_msgSend(_8,"addSubview:",_e);
var _f=objj_msgSend(objj_msgSend(Blackboard,"alloc"),"initWithFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(_e,"bounds")),CGRectGetHeight(objj_msgSend(_d,"bounds")),CGRectGetWidth(objj_msgSend(_8,"bounds"))-CGRectGetWidth(objj_msgSend(_e,"bounds")),CGRectGetHeight(objj_msgSend(_8,"bounds"))));
objj_msgSend(_f,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_8,"addSubview:",_f);
}
return _8;
}
}),new objj_method(sel_getUid("createMockUserList"),function(_10,_11){
with(_10){
return objj_msgSend(CPMutableArray,"arrayWithArray:",[objj_msgSend(User,"userWithName:taskList:","Diego",objj_msgSend(CPMutableArray,"arrayWithArray:",[]))]);
}
})]);
var _1=objj_allocateClassPair(CPBox,"TaskboardToolBar"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_12,_13,_14){
with(_12){
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("TaskboardToolBar").super_class},"initWithFrame:",_14);
if(_12){
objj_msgSend(_12,"addSubview:",objj_msgSend(objj_msgSend(objj_msgSend(NewStickyNote,"alloc"),"init"),"initWithFrame:",CGRectMake(5,5,100,100)));
objj_msgSend(_12,"addSubview:",objj_msgSend(objj_msgSend(objj_msgSend(StatusTaskPanel,"alloc"),"init"),"initWithFrame:",CGRectMake(110,0,400,100)));
}
return _12;
}
}),new objj_method(sel_getUid("drawRect:"),function(_15,_16,_17){
with(_15){
objj_msgSendSuper({receiver:_15,super_class:objj_getClass("TaskboardToolBar").super_class},"drawRect:",_17);
var _18=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_19=objj_msgSend(_15,"bounds"),_1a=[CPMinYEdge,CPMaxYEdge,CPMinXEdge,CPMaxXEdge],_1b=[objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"grayColor"),objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"whiteColor")],_1c=CPDrawColorTiledRects(_19,_19,_1a,_1b);
CGContextSetFillColor(_18,objj_msgSend(CPColor,"whiteColor"));
CGContextFillRect(_18,_1c);
}
})]);
var _1=objj_allocateClassPair(CPBox,"TaskboardColumn"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("title"),new objj_ivar("parent")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("title"),function(_1d,_1e){
with(_1d){
return title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_1f,_20,_21){
with(_1f){
title=_21;
}
}),new objj_method(sel_getUid("parent"),function(_22,_23){
with(_22){
return parent;
}
}),new objj_method(sel_getUid("setParent:"),function(_24,_25,_26){
with(_24){
parent=_26;
}
}),new objj_method(sel_getUid("initWithFrame:title:parent:"),function(_27,_28,_29,_2a,_2b){
with(_27){
_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("TaskboardColumn").super_class},"initWithFrame:",CGRectInset(_29,5,5));
if(_27){
title=_2a;
parent=_2b;
objj_msgSend(_27,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_27,"setBorderType:",CPNoBorder);
var _2c=CGRectGetWidth(objj_msgSend(_27,"bounds")),_2d=CGRectGetHeight(objj_msgSend(_27,"bounds")),_2e=objj_msgSend(CPBundle,"mainBundle");
var _2f=objj_msgSend(_2e,"pathForResource:","title-background.jpg"),_30=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",_2f,CGSizeMake(366,195)),_31=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_27,"bounds"),3,3));
objj_msgSend(_31,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_31,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_31,"setImage:",_30);
objj_msgSend(_27,"addSubview:",_31);
var _32=objj_msgSend(objj_msgSend(TitleTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,100,40));
objj_msgSend(_32,"setStringValue:",title);
objj_msgSend(_32,"setEditable:",NO);
objj_msgSend(_32,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(_32,"sizeToFit");
objj_msgSend(_32,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_32,"setCenter:",CGPointMake(_2c/2,_2d/2));
objj_msgSend(_32,"setAction:",sel_getUid("tile"));
objj_msgSend(_32,"setTarget:",objj_msgSend(_27,"parent"));
objj_msgSend(_27,"addSubview:",_32);
}
return _27;
}
}),new objj_method(sel_getUid("onTitleClick"),function(_33,_34){
with(_33){
console.log("onTitleClick");
}
}),new objj_method(sel_getUid("drawRect:"),function(_35,_36,_37){
with(_35){
objj_msgSendSuper({receiver:_35,super_class:objj_getClass("TaskboardColumn").super_class},"drawRect:",_37);
var _38=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_39=objj_msgSend(_35,"bounds"),_3a=CGRectGetWidth(_39),_3b=CGRectGetHeight(_39);
CGContextSetLineWidth(_38,3);
CGContextStrokeLineSegments(_38,[CGPointMake(0,_3b),CGPointMake(_3a,_3b),CGPointMake(0,_3b-1),CGPointMake(_3a,_3b-1)],4);
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_3c,_3d,_3e){
with(_3c){
CPLog.trace("performDragOperation");
}
})]);
var _1=objj_allocateClassPair(CPTextField,"TitleTextField"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("mouseDown:"),function(_3f,_40,_41){
with(_3f){
if(objj_msgSend(_41,"clickCount")==2){
console.log("doubleClick");
objj_msgSend(_3f,"sendAction:to:",objj_msgSend(_3f,"action"),objj_msgSend(_3f,"target"));
}
}
})]);
var _1=objj_allocateClassPair(CPBox,"Blackboard"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("notStartedColumn"),new objj_ivar("inProgressColumn"),new objj_ivar("finishedColumn"),new objj_ivar("taskList"),new objj_ivar("views"),new objj_ivar("horizontalMargin"),new objj_ivar("verticalMargin"),new objj_ivar("originY"),new objj_ivar("columnWidth"),new objj_ivar("columnHeight")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("notStartedColumn"),function(_42,_43){
with(_42){
return notStartedColumn;
}
}),new objj_method(sel_getUid("setNotStartedColumn:"),function(_44,_45,_46){
with(_44){
notStartedColumn=_46;
}
}),new objj_method(sel_getUid("inProgressColumn"),function(_47,_48){
with(_47){
return inProgressColumn;
}
}),new objj_method(sel_getUid("setInProgressColumn:"),function(_49,_4a,_4b){
with(_49){
inProgressColumn=_4b;
}
}),new objj_method(sel_getUid("finishedColumn"),function(_4c,_4d){
with(_4c){
return finishedColumn;
}
}),new objj_method(sel_getUid("setFinishedColumn:"),function(_4e,_4f,_50){
with(_4e){
finishedColumn=_50;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_51,_52,_53){
with(_51){
_51=objj_msgSendSuper({receiver:_51,super_class:objj_getClass("Blackboard").super_class},"initWithFrame:",_53);
if(_51){
objj_msgSend(_51,"setDraggingExitedBorder");
var _54=CGRectGetWidth(objj_msgSend(_51,"bounds"))/3,_55=CGRectGetHeight(objj_msgSend(_51,"bounds"));
notStartedColumn=objj_msgSend(objj_msgSend(TaskboardColumn,"alloc"),"initWithFrame:title:parent:",CGRectMake(0,0,_54,80),"NOT STARTED",_51);
objj_msgSend(_51,"addSubview:",notStartedColumn);
inProgressColumn=objj_msgSend(objj_msgSend(TaskboardColumn,"alloc"),"initWithFrame:title:parent:",CGRectMake(_54,0,_54,80),"IN PROGRESS",_51);
objj_msgSend(_51,"addSubview:",inProgressColumn);
finishedColumn=objj_msgSend(objj_msgSend(TaskboardColumn,"alloc"),"initWithFrame:title:parent:",CGRectMake(_54+_54,0,_54,80),"FINISHED",_51);
objj_msgSend(_51,"addSubview:",finishedColumn);
objj_msgSend(_51,"registerForDraggedTypes:",[NewStickyNoteDragType]);
taskList=objj_msgSend(TaskService,"allTask");
horizontalMargin=5;
verticalMargin=5;
originY=80;
columnWidth=CGRectGetWidth(objj_msgSend(_51,"bounds"))/3;
columnHeight=CGRectGetHeight(objj_msgSend(_51,"bounds"));
views=[];
objj_msgSend(_51,"reloadContent");
}
return _51;
}
}),new objj_method(sel_getUid("reloadContent"),function(_56,_57){
with(_56){
console.log("reloadContent");
var _58=0,_59=150,_5a=taskList.length;
for(;_58<_5a;++_58){
var _5b=objj_msgSend(objj_msgSend(StickyNote,"alloc"),"initWithFrame:task:",CGRectMake(0,0,_59,_59),taskList[_58]);
views.push(_5b);
objj_msgSend(_56,"addSubview:",_5b);
}
objj_msgSend(_56,"tile");
}
}),new objj_method(sel_getUid("tile"),function(_5c,_5d){
with(_5c){
var _5e=0,_5f=150;
count=views.length,numberOfColumns=MAX(1,FLOOR(columnWidth/_5f)),numberOfRows=MAX(1,FLOOR(columnHeight/_5f)),gap=_5f,horizontalMargin=FLOOR((columnWidth-numberOfColumns*_5f)/(numberOfColumns+1));
for(;_5e<count;++_5e){
var _60=views[_5e];
objj_msgSend(_60,"removeFromSuperview");
}
_5e=0;
if(count>(numberOfColumns*numberOfRows)){
gap=FLOOR(_5f/3);
}
var x=horizontalMargin,y=-gap+originY;
for(;_5e<count;++_5e){
var _60=views[_5e];
if(_5e%numberOfColumns==0){
x=horizontalMargin;
y+=verticalMargin+gap;
}
objj_msgSend(_5c,"addSubview:",_60);
console.log("From:",objj_msgSend(_60,"frame"),". To:",CGRectMake(x,y,150,150));
objj_msgSend(_5c,"moveViewWithAnimation:startFrame:endFrame:",_60,objj_msgSend(_60,"frame"),CGRectMake(x,y,150,150));
x+=_5f+horizontalMargin;
}
}
}),new objj_method(sel_getUid("moveViewWithAnimation:startFrame:endFrame:"),function(_61,_62,_63,_64,_65){
with(_61){
var _66=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_63,_64,_65,CPViewAnimationEffectKey],[CPViewAnimationTargetKey,CPViewAnimationStartFrameKey,CPViewAnimationEndFrameKey,CPViewAnimationEffectKey]),_67=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",[_66]);
objj_msgSend(_67,"startAnimation");
}
}),new objj_method(sel_getUid("setDraggingEnteredBorder"),function(_68,_69){
with(_68){
objj_msgSend(_68,"setBorderType:",CPLineBorder);
objj_msgSend(_68,"setBorderColor:",objj_msgSend(CPColor,"grayColor"));
}
}),new objj_method(sel_getUid("setDraggingExitedBorder"),function(_6a,_6b){
with(_6a){
objj_msgSend(_6a,"setBorderType:",CPNoBorder);
objj_msgSend(_6a,"setBorderColor:",nil);
}
}),new objj_method(sel_getUid("draggingEntered:"),function(_6c,_6d,_6e){
with(_6c){
objj_msgSend(_6c,"setDraggingEnteredBorder");
}
}),new objj_method(sel_getUid("draggingExited:"),function(_6f,_70,_71){
with(_6f){
objj_msgSend(_6f,"setDraggingExitedBorder");
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_72,_73,_74){
with(_72){
var _75=objj_msgSend(_72,"convertPoint:fromView:",objj_msgSend(_74,"draggingLocation"),nil);
objj_msgSend(_72,"setDraggingExitedBorder");
var _76=objj_msgSend(objj_msgSend(_74,"draggingPasteboard"),"dataForType:",NewStickyNoteDragType),_77=objj_msgSend(Task,"taskWithTitle:","Task User"),_78=objj_msgSend(objj_msgSend(StickyNote,"alloc"),"initWithFrame:task:",CGRectMake(0,0,150,150),_77);
objj_msgSend(_78,"setFrameOrigin:",CGPointMake(_75.x-CGRectGetWidth(objj_msgSend(_78,"frame"))/2,_75.y-CGRectGetHeight(objj_msgSend(_78,"frame"))/2));
views.push(_78);
taskList.push(_77);
objj_msgSend(_72,"addSubview:",_78);
}
}),new objj_method(sel_getUid("drawRect:"),function(_79,_7a,_7b){
with(_79){
var _7c=objj_msgSend(_79,"bounds"),_7d=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_7e=CGRectGetWidth(_7c)/3,_7f=CGRectGetHeight(_7c);
CGContextSetLineWidth(_7d,3);
CGContextStrokeLineSegments(_7d,[CGPointMake(_7e,0),CGPointMake(_7e,_7f),CGPointMake(_7e+_7e,0),CGPointMake(_7e+_7e,_7f)],4);
}
})]);
var _1=objj_allocateClassPair(CPBox,"TaskboardNavigationArea"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_80,_81,_82){
with(_80){
_80=objj_msgSendSuper({receiver:_80,super_class:objj_getClass("TaskboardNavigationArea").super_class},"initWithFrame:",_82);
if(_80){
}
return _80;
}
})]);
var _1=objj_allocateClassPair(CPBox,"StatusTaskPanel"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_83,_84,_85){
with(_83){
_83=objj_msgSendSuper({receiver:_83,super_class:objj_getClass("StatusTaskPanel").super_class},"initWithFrame:",_85);
if(_83){
objj_msgSend(_83,"setBackgroundColor:",objj_msgSend(CPColor,"yellowColor"));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(3,3,65,40),"PLEASE \n ANALYSE",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",1,0,1,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(68,3,65,40),"PLEASE \n TEST",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",1,0.4,0.2,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(68*2,3,65,40),"DONE",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",70/255,130/255,180/255,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(68*3,3,65,40),"BLOCKED",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",112/255,147/255,219/255,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(3,50,65,40),"HIGH \n PRIORITY",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",255/255,16/255,16/255,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(68,50,65,40),"WAITING",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",255/255,165/255,79/255,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(68*2,50,65,40),"DELEGATED",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",193/255,255/255,193/255,0.7)),CPLightShadow));
objj_msgSend(_83,"addSubview:",objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",objj_msgSend(StatusTask,"withFrame:status:color:",CGRectMake(68*3,50,65,40),"BUG",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",85/255,107/255,47/255,0.7)),CPLightShadow));
}
return _83;
}
})]);
var _1=objj_allocateClassPair(CPBox,"TaskboardMetadataArea"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_86,_87,_88){
with(_86){
_86=objj_msgSendSuper({receiver:_86,super_class:objj_getClass("TaskboardMetadataArea").super_class},"initWithFrame:",_88);
if(_86){
objj_msgSend(_86,"setBackgroundColor:",objj_msgSend(CPColor,"yellowColor"));
}
return _86;
}
})]);
NewStickyNoteDragType="NewStickyNoteDragType";
var _1=objj_allocateClassPair(CPView,"NewStickyNote"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_89,_8a,_8b){
with(_89){
_89=objj_msgSendSuper({receiver:_89,super_class:objj_getClass("NewStickyNote").super_class},"initWithFrame:",_8b);
if(_89){
var _8c=CGRectGetWidth(objj_msgSend(_89,"bounds")),_8d=CGRectGetHeight(objj_msgSend(_89,"bounds"));
var _8e=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,_8d*(1/3),_8c,_8d*(2/3)));
objj_msgSend(_8e,"setStringValue:","New Task");
objj_msgSend(_8e,"setEditable:",NO);
objj_msgSend(_8e,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(_8e,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_8e,"setCenter:",CGPointMake(_8c/2,_8d/2));
objj_msgSend(_8e,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_8e,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_89,"setBackgroundColor:",objj_msgSend(_89,"customBackgroundImageColor"));
objj_msgSend(_89,"setAlphaValue:",0.8);
objj_msgSend(_89,"addSubview:",_8e);
}
return _89;
}
}),new objj_method(sel_getUid("customBackgroundImageColor"),function(_8f,_90){
with(_8f){
var _91=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_8f,"class")),_92=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/top-left.png"),CPSizeMake(10,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/top.png"),CPSizeMake(1,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/top-right.png"),CPSizeMake(10,30)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/left.png"),CPSizeMake(10,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/center.png"),CPSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/right.png"),CPSizeMake(10,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/bottom-left.png"),CPSizeMake(10,12)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/bottom.png"),CPSizeMake(1,12)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_91,"pathForResource:","yellow/bottom-right.png"),CPSizeMake(10,12)),]));
return _92;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_93,_94,_95){
with(_93){
var _96=objj_msgSend(_93,"convertPoint:fromView:",objj_msgSend(_95,"locationInWindow"),nil),_97=CGRectMake(0,0,30,30);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",NewStickyNoteDragType),_93);
objj_msgSend(_93,"dragView:at:offset:event:pasteboard:source:slideBack:",objj_msgSend(_93,"mutableCopy"),CPPointMakeZero(),CPPointMake(0,0),_95,nil,_93,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_98,_99,_9a,_9b){
with(_98){
if(_9b==NewStickyNoteDragType){
objj_msgSend(_9a,"setData:forType:",objj_msgSend(_98,"mutableCopy"),_9b);
}
}
}),new objj_method(sel_getUid("mutableCopy"),function(_9c,_9d){
with(_9c){
return objj_msgSend(objj_msgSend(NewStickyNote,"alloc"),"initWithFrame:",objj_msgSend(_9c,"frame"));
}
})]);
p;13;TaskService.jt;692;@STATIC;1.0;I;21;Foundation/CPObject.ji;6;Task.jt;638;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Task.j",YES);
var _1=objj_allocateClassPair(CPObject,"TaskService"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("allTask"),function(_3,_4){
with(_3){
var _5=objj_msgSend(CPURLRequest,"requestWithURL:","Resources/TaskList.json");
var _6;
var _7=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
var _8=objj_msgSend(CPURLConnection,"sendSynchronousRequest:returningResponse:",_5,_6);
if(_8!=nil){
var _9=objj_msgSend(_8,"JSONObject");
if(_9!=null){
_7=objj_msgSend(Task,"initWithJSONObjects:",_9.TaskList);
}
}
return _7;
}
})]);
p;6;User.jt;1200;@STATIC;1.0;i;6;Task.jt;1171;
objj_executeFile("Task.j",YES);
var _1=objj_allocateClassPair(CPObject,"User"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("name"),new objj_ivar("taskList")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("name"),function(_3,_4){
with(_3){
return name;
}
}),new objj_method(sel_getUid("setName:"),function(_5,_6,_7){
with(_5){
name=_7;
}
}),new objj_method(sel_getUid("taskList"),function(_8,_9){
with(_8){
return taskList;
}
}),new objj_method(sel_getUid("setTaskList:"),function(_a,_b,_c){
with(_a){
taskList=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"initWithName:taskList:","Unknow name",objj_msgSend(objj_msgSend(CPMutableArray,"alloc"),"init"));
}
}),new objj_method(sel_getUid("initWithName:taskList:"),function(_f,_10,_11,_12){
with(_f){
if(_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("User").super_class},"init")){
name=_11;
taskList=_12;
}
return _f;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("userWithName:taskList:"),function(_13,_14,_15,_16){
with(_13){
return objj_msgSend(objj_msgSend(User,"alloc"),"initWithName:taskList:",_15,_16);
}
})]);
p;13;WindowUtils.jt;814;@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPPanel.jt;749;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPPanel.j",NO);
var _1=objj_allocateClassPair(CPObject,"WindowUtils"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("showInHUDPanel:withFrame:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",_6,CPHUDBackgroundWindowMask|CPClosableWindowMask|CPResizableWindowMask);
objj_msgSend(objj_msgSend(_7,"contentView"),"addSubview:",_5);
objj_msgSend(objj_msgSend(_7,"contentView"),"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_7,"setTitle:","For debug...");
objj_msgSend(_7,"setFloatingPanel:",YES);
objj_msgSend(_7,"orderFront:",_3);
}
})]);
p;22;Test/TaskServiceTest.jt;408;@STATIC;1.0;i;16;../TaskService.jt;369;
objj_executeFile("../TaskService.j",YES);
var _1=objj_allocateClassPair(OJTestCase,"TaskServiceTest"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("testAllTask"),function(_3,_4){
with(_3){
var _5=objj_msgSend(TaskService,"allTask");
objj_msgSend(_3,"assertNotNull:",_5);
objj_msgSend(_3,"assert:equals:",_5.length,2);
}
})]);
e;