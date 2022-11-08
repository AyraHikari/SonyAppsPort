.class public Lcom/android/quickstep/TouchInteractionService$TISBinder;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "TouchInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TISBinder"
.end annotation


# instance fields
.field private mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/quickstep/TouchInteractionService;

    .line 148
    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method private executeForTaskbarManager(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 303
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method static synthetic lambda$onSplitScreenSecondaryBoundsChanged$5(Lcom/android/launcher3/util/WindowBounds;)V
    .locals 1
    .param p0, "wb"    # Lcom/android/launcher3/util/WindowBounds;

    .line 260
    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitScreenBounds;->setSecondaryWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method static synthetic lambda$setSwipeUpProxy$11(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;
    .locals 1
    .param p0, "i"    # Lcom/android/quickstep/GestureState;

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "state1"    # I
    .param p3, "state2"    # I
    .param p4, "animate"    # Z

    .line 286
    new-instance v6, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IIIZ)V

    invoke-direct {p0, v6}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmOverviewCommandHelper(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$disable$7$com-android-quickstep-TouchInteractionService$TISBinder(IIIZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "state1"    # I
    .param p3, "state2"    # I
    .param p4, "animate"    # Z

    .line 286
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarManager;->disableNavBarElements(IIIZ)V

    .line 286
    return-void
.end method

.method synthetic lambda$executeForTaskbarManager$10$com-android-quickstep-TouchInteractionService$TISBinder(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 304
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    return-void

    .line 307
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 308
    return-void
.end method

.method synthetic lambda$onActiveNavBarRegionChanges$4$com-android-quickstep-TouchInteractionService$TISBinder(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .line 254
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setDeferredGestureRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method synthetic lambda$onAssistantAvailable$1$com-android-quickstep-TouchInteractionService$TISBinder(Z)V
    .locals 1
    .param p1, "available"    # Z

    .line 223
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantAvailable(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$monAssistantVisibilityChanged(Lcom/android/quickstep/TouchInteractionService;)V

    .line 225
    return-void
.end method

.method synthetic lambda$onAssistantVisibilityChanged$2$com-android-quickstep-TouchInteractionService$TISBinder(F)V
    .locals 1
    .param p1, "visibility"    # F

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantVisibility(F)V

    .line 233
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$monAssistantVisibilityChanged(Lcom/android/quickstep/TouchInteractionService;)V

    .line 234
    return-void
.end method

.method synthetic lambda$onInitialize$0$com-android-quickstep-TouchInteractionService$TISBinder(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V
    .locals 12
    .param p1, "proxy"    # Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .param p2, "pip"    # Lcom/android/wm/shell/pip/IPip;
    .param p3, "splitscreen"    # Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .param p4, "onehanded"    # Lcom/android/wm/shell/onehanded/IOneHanded;
    .param p5, "shellTransitions"    # Lcom/android/wm/shell/transition/IShellTransitions;
    .param p6, "startingWindow"    # Lcom/android/wm/shell/startingsurface/IStartingWindow;
    .param p7, "recentTasks"    # Lcom/android/wm/shell/recents/IRecentTasks;
    .param p8, "launcherUnlockAnimationController"    # Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;
    .param p9, "backAnimation"    # Lcom/android/wm/shell/back/IBackAnimation;

    .line 173
    move-object v0, p0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V

    .line 176
    iget-object v1, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    const-string v2, "TISBinder#onInitialize()"

    invoke-static {v1, v2}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$minitInputMonitor(Lcom/android/quickstep/TouchInteractionService;Ljava/lang/String;)V

    .line 177
    iget-object v1, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$mpreloadOverview(Lcom/android/quickstep/TouchInteractionService;Z)V

    .line 178
    return-void
.end method

.method synthetic lambda$onNavButtonsDarkIntensityChanged$9$com-android-quickstep-TouchInteractionService$TISBinder(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .line 298
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onNavButtonsDarkIntensityChanged(F)V

    .line 298
    return-void
.end method

.method synthetic lambda$onRotationProposal$6$com-android-quickstep-TouchInteractionService$TISBinder(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 281
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->onRotationProposal(IZ)V

    return-void
.end method

.method synthetic lambda$onSystemBarAttributesChanged$8$com-android-quickstep-TouchInteractionService$TISBinder(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "behavior"    # I

    .line 292
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemBarAttributesChanged(II)V

    .line 292
    return-void
.end method

.method synthetic lambda$onSystemUiStateChanged$3$com-android-quickstep-TouchInteractionService$TISBinder(I)V
    .locals 2
    .param p1, "stateFlags"    # I

    .line 246
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    .line 247
    .local v0, "lastFlags":I
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v1}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    .line 248
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v1, v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$monSystemUiFlagsChanged(Lcom/android/quickstep/TouchInteractionService;I)V

    .line 249
    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 254
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public onAssistantAvailable(Z)V
    .locals 2
    .param p1, "available"    # Z

    .line 222
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 2
    .param p1, "visibility"    # F

    .line 231
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public onBackAction(ZIIZZ)V
    .locals 0
    .param p1, "completed"    # Z
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "isButton"    # Z
    .param p5, "gestureSwipeLeft"    # Z

    .line 241
    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 154
    move-object/from16 v0, p1

    .line 155
    const-string v1, "extra_sysui_proxy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v1

    .line 156
    .local v1, "proxy":Lcom/android/systemui/shared/recents/ISystemUiProxy;
    const-string v2, "extra_shell_pip"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/pip/IPip$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPip;

    move-result-object v13

    .line 157
    .local v13, "pip":Lcom/android/wm/shell/pip/IPip;
    const-string v2, "extra_shell_split_screen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move-result-object v14

    .line 159
    .local v14, "splitscreen":Lcom/android/wm/shell/splitscreen/ISplitScreen;
    nop

    .line 160
    const-string v2, "extra_shell_one_handed"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 159
    invoke-static {v2}, Lcom/android/wm/shell/onehanded/IOneHanded$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object v15

    .line 161
    .local v15, "onehanded":Lcom/android/wm/shell/onehanded/IOneHanded;
    nop

    .line 162
    const-string v2, "extra_shell_shell_transitions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 161
    invoke-static {v2}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;

    move-result-object v16

    .line 163
    .local v16, "shellTransitions":Lcom/android/wm/shell/transition/IShellTransitions;
    nop

    .line 164
    const-string v2, "extra_shell_starting_window"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 163
    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/IStartingWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/startingsurface/IStartingWindow;

    move-result-object v17

    .line 165
    .local v17, "startingWindow":Lcom/android/wm/shell/startingsurface/IStartingWindow;
    nop

    .line 167
    const-string v2, "unlock_animation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 166
    invoke-static {v2}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    move-result-object v18

    .line 168
    .local v18, "launcherUnlockAnimationController":Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;
    nop

    .line 169
    const-string v2, "recent_tasks"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/android/wm/shell/recents/IRecentTasks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasks;

    move-result-object v19

    .line 170
    .local v19, "recentTasks":Lcom/android/wm/shell/recents/IRecentTasks;
    nop

    .line 171
    const-string v2, "extra_shell_back_animation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 170
    invoke-static {v2}, Lcom/android/wm/shell/back/IBackAnimation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/back/IBackAnimation;

    move-result-object v20

    .line 172
    .local v20, "backAnimation":Lcom/android/wm/shell/back/IBackAnimation;
    sget-object v12, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;

    move-object v2, v11

    move-object/from16 v3, p0

    move-object v4, v1

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v19

    move-object v0, v11

    move-object/from16 v11, v18

    move-object/from16 v21, v1

    move-object v1, v12

    .end local v1    # "proxy":Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .local v21, "proxy":Lcom/android/systemui/shared/recents/ISystemUiProxy;
    move-object/from16 v12, v20

    invoke-direct/range {v2 .. v12}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 179
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$sfputsIsInitialized(Z)V

    .line 180
    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .line 298
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .line 207
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmOverviewCommandHelper(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmOverviewCommandHelper(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmOverviewCommandHelper(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    .line 202
    :goto_0
    return-void
.end method

.method protected onOverviewTargetChange()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    .line 343
    :cond_0
    return-void
.end method

.method public onOverviewToggle()V
    .locals 2

    .line 184
    const-string v0, "Main"

    const-string v1, "onOverviewToggle"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmOverviewCommandHelper(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    .line 191
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 281
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda10;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 266
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v1, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/ProxyScreenStatusProvider;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 259
    new-instance v0, Lcom/android/launcher3/util/WindowBounds;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 260
    .local v0, "wb":Lcom/android/launcher3/util/WindowBounds;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/util/WindowBounds;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "behavior"    # I

    .line 292
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda11;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 2
    .param p1, "stateFlags"    # I

    .line 245
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public onTip(II)V
    .locals 0
    .param p1, "actionType"    # I
    .param p2, "viewType"    # I

    .line 217
    return-void
.end method

.method public preloadOverviewForSUWAllSet()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$mpreloadOverview(Lcom/android/quickstep/TouchInteractionService;ZZ)V

    .line 277
    return-void
.end method

.method public setGestureBlockedTaskId(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 330
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setGestureBlockingTaskId(I)V

    .line 331
    return-void
.end method

.method public setOverviewTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 335
    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    .line 336
    return-void
.end method

.method public setSwipeUpProxy(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/quickstep/GestureState;",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p1, "proxy":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/quickstep/GestureState;Lcom/android/quickstep/AnimatedFloat;>;"
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda6;-><init>()V

    :goto_0
    invoke-static {v0, v1}, Lcom/android/quickstep/TouchInteractionService;->-$$Nest$fputmSwipeUpProxyProvider(Lcom/android/quickstep/TouchInteractionService;Ljava/util/function/Function;)V

    .line 324
    return-void
.end method
