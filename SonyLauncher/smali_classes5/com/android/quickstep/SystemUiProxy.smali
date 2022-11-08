.class public Lcom/android/quickstep/SystemUiProxy;
.super Ljava/lang/Object;
.source "SystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/SystemUiProxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

.field private mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

.field private mHasNavButtonAlphaBeenSet:Z

.field private mLastNavButtonAlpha:F

.field private mLastNavButtonAnimate:Z

.field private mLastShelfHeight:I

.field private mLastShelfVisible:Z

.field private mLastSystemUiStateFlags:I

.field private mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

.field private mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

.field private mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

.field private mPip:Lcom/android/wm/shell/pip/IPip;

.field private mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

.field private mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

.field private mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

.field private final mRemoteTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

.field private mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

.field private mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

.field private mStartingWindowListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

.field private mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-class v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mHasNavButtonAlphaBeenSet:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    .line 116
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 117
    return-void
.end method

.method private linkToDeath()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to link sysui proxy death recipient"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private unlinkToDeath()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/window/IOnBackInvokedCallback;

    .line 864
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    if-eq v0, p1, :cond_0

    .line 865
    return-void

    .line 867
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    .line 868
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-nez v0, :cond_1

    .line 869
    return-void

    .line 872
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/android/wm/shell/back/IBackAnimation;->clearBackToLauncherCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call clearBackToLauncherCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public clearProxy()V
    .locals 10

    .line 214
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V

    .line 215
    return-void
.end method

.method public expandNotificationPanel()V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 490
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->expandNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call expandNotificationPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastNavButtonAlpha()F
    .locals 1

    .line 286
    iget v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAlpha:F

    return v0
.end method

.method public getLastSystemUiStateFlags()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastSystemUiStateFlags:I

    return v0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call getNonMinimizedSplitScreenSecondaryBounds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentTasks(II)Ljava/util/ArrayList;
    .locals 3
    .param p1, "numTasks"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_1

    .line 895
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lcom/android/wm/shell/recents/IRecentTasks;->getRecentTasks(III)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v0

    .line 897
    .local v0, "rawTasks":[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    if-nez v0, :cond_0

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 900
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 901
    .end local v0    # "rawTasks":[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call getRecentTasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "insets"    # Landroid/graphics/Insets;
    .param p4, "i"    # I

    .line 389
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call handleImageAsScreenshot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 3
    .param p1, "screenImageBundle"    # Landroid/os/Bundle;
    .param p2, "locationInScreen"    # Landroid/graphics/Rect;
    .param p3, "visibleInsets"    # Landroid/graphics/Insets;
    .param p4, "task"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 476
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 478
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call handleImageBundleAsScreenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-SystemUiProxy()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->clearProxy()V

    return-void
.end method

.method synthetic lambda$new$1$com-android-quickstep-SystemUiProxy()V
    .locals 2

    .line 89
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/SystemUiProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method synthetic lambda$setNavBarButtonAlpha$2$com-android-quickstep-SystemUiProxy(FZ)V
    .locals 0
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->setNavBarButtonAlpha(FZ)V

    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 356
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call notifyAccessibilityButtonClicked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call notifyAccessibilityButtonLongClicked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyPrioritizedRotation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 436
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 438
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyPrioritizedRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed call notifyPrioritizedRotation with arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifySwipeToHomeFinished()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call notifySwipeToHomeFinished"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifySwipeUpGestureStarted()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeUpGestureStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call notifySwipeUpGestureStarted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifySysuiSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    .line 806
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    if-eqz v0, :cond_0

    .line 808
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;->onLauncherSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call notifySysuiSmartspaceStateUpdated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 814
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyTaskbarAutohideSuspend(Z)V
    .locals 4
    .param p1, "suspend"    # Z

    .line 463
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 465
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyTaskbarAutohideSuspend(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed call notifyTaskbarAutohideSuspend with arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyTaskbarStatus(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "stashed"    # Z

    .line 447
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 449
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyTaskbarStatus(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed call notifyTaskbarStatus with arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 3
    .param p1, "velocity"    # F

    .line 334
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onAssistantGestureCompletion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .line 323
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed call onAssistantProgress with progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onBackPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onBackPressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onBackToLauncherAnimationFinished()V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz v0, :cond_0

    .line 885
    :try_start_0
    invoke-interface {v0}, Lcom/android/wm/shell/back/IBackAnimation;->onBackToLauncherAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onBackAnimationFinished"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 121
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 123
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setNavBarButtonAlpha(FZ)V

    .line 125
    :cond_0
    return-void
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3
    .param p1, "apps"    # [Landroid/view/RemoteAnimationTarget;

    .line 682
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 684
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onGoingToRecentsLegacy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImeSwitcherPressed()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onImeSwitcherPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onImeSwitcherPressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 1
    .param p1, "fromHome"    # Z

    .line 260
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    .line 261
    return-void
.end method

.method public onOverviewShown(ZLjava/lang/String;)V
    .locals 3
    .param p1, "fromHome"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_1

    .line 266
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onOverviewShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed call onOverviewShown from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "home"

    goto :goto_0

    :cond_0
    const-string v2, "app"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3
    .param p1, "apps"    # [Landroid/view/RemoteAnimationTarget;

    .line 693
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 695
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onStartingSplitLegacy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 312
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onStatusBarMotionEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 821
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_0

    .line 823
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call registerRecentTasksListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 829
    return-void
.end method

.method public registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 3
    .param p1, "remoteTransition"    # Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 732
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v0, :cond_0

    .line 734
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getFilter()Landroid/window/TransitionFilter;

    move-result-object v1

    .line 735
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/RemoteTransition;

    move-result-object v2

    .line 734
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call registerRemoteTransition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_1
    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 577
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call registerSplitScreenListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 585
    return-void
.end method

.method public removeFromSideStage(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 666
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 668
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->removeFromSideStage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call removeFromSideStage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/window/IOnBackInvokedCallback;

    .line 848
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    .line 849
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-nez v0, :cond_0

    .line 850
    return-void

    .line 853
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/back/IBackAnimation;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setBackToLauncherCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setHomeRotationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setHomeRotationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call onBackPressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLastSystemUiStateFlags(I)V
    .locals 0
    .param p1, "stateFlags"    # I

    .line 219
    iput p1, p0, Lcom/android/quickstep/SystemUiProxy;->mLastSystemUiStateFlags:I

    .line 220
    return-void
.end method

.method public setLauncherUnlockAnimationController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 786
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    if-eqz v0, :cond_1

    .line 788
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;->setLauncherUnlockController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V

    .line 790
    if-eqz p1, :cond_0

    .line 791
    invoke-interface {p1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->dispatchSmartspaceStateToSysui()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setStartingWindowListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 797
    :cond_1
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 799
    :goto_1
    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 291
    iget v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAnimate:Z

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mHasNavButtonAlphaBeenSet:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 294
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 295
    iget-object v2, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v2, :cond_2

    .line 296
    new-instance v1, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/SystemUiProxy;FZ)V

    iput-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    goto :goto_2

    .line 298
    :cond_2
    iput p1, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAlpha:F

    .line 299
    iput-boolean p2, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAnimate:Z

    .line 300
    iput-boolean v1, p0, Lcom/android/quickstep/SystemUiProxy;->mHasNavButtonAlphaBeenSet:Z

    .line 302
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setNavBarButtonAlpha(FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_2

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v3, "Failed call setNavBarButtonAlpha"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void
.end method

.method public setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 533
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v0, :cond_0

    .line 535
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/pip/IPip;->setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setPinnedStackAnimationListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 541
    return-void
.end method

.method public setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V
    .locals 3
    .param p1, "proxy"    # Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .param p2, "pip"    # Lcom/android/wm/shell/pip/IPip;
    .param p3, "splitScreen"    # Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .param p4, "oneHanded"    # Lcom/android/wm/shell/onehanded/IOneHanded;
    .param p5, "shellTransitions"    # Lcom/android/wm/shell/transition/IShellTransitions;
    .param p6, "startingWindow"    # Lcom/android/wm/shell/startingsurface/IStartingWindow;
    .param p7, "recentTasks"    # Lcom/android/wm/shell/recents/IRecentTasks;
    .param p8, "sysuiUnlockAnimationController"    # Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;
    .param p9, "backAnimation"    # Lcom/android/wm/shell/back/IBackAnimation;

    .line 171
    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->unlinkToDeath()V

    .line 172
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 173
    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    .line 174
    iput-object p3, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    .line 175
    iput-object p4, p0, Lcom/android/quickstep/SystemUiProxy;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    .line 176
    iput-object p5, p0, Lcom/android/quickstep/SystemUiProxy;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    .line 177
    iput-object p6, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    .line 178
    iput-object p8, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    .line 179
    iput-object p7, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    .line 180
    iput-object p9, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    .line 181
    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->linkToDeath()V

    .line 183
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindowListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setLauncherUnlockAnimationController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V

    .line 195
    iput-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 198
    iget-object v2, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {p0, v2}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v2, :cond_5

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 208
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 209
    iput-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    .line 211
    :cond_7
    return-void
.end method

.method public setShelfHeight(ZI)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "shelfHeight"    # I

    .line 516
    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfVisible:Z

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfHeight:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 517
    .local v0, "changed":Z
    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 518
    iput-boolean p1, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfVisible:Z

    .line 519
    iput p2, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfHeight:I

    .line 521
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/pip/IPip;->setShelfHeight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_2

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed call setShelfHeight visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 3
    .param p1, "minimized"    # Z

    .line 400
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setSplitScreenMinimized(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setSplitScreenMinimized"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    .line 764
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    if-eqz v0, :cond_0

    .line 766
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/startingsurface/IStartingWindow;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setStartingWindowListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindowListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    .line 772
    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .line 345
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call startAssistant"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "position"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 656
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 658
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call startIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 11
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "taskId"    # I
    .param p4, "mainOptions"    # Landroid/os/Bundle;
    .param p5, "sideOptions"    # Landroid/os/Bundle;
    .param p6, "sidePosition"    # I
    .param p7, "splitRatio"    # F
    .param p8, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 632
    move-object v1, p0

    iget-object v0, v1, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 634
    :try_start_0
    iget-object v2, v1, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v3, "Failed call startTasksWithLegacyTransition"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startOneHandedMode()V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v0, :cond_0

    .line 710
    :try_start_0
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/IOneHanded;->startOneHanded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call startOneHandedMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startScreenPinning(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 249
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call startScreenPinning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 644
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 646
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call startShortcut"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;
    .param p4, "launcherRotation"    # I
    .param p5, "shelfHeight"    # I

    .line 545
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v0, :cond_0

    .line 547
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/pip/IPip;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call startSwipePipToHome"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 10
    .param p1, "mainTaskId"    # I
    .param p2, "mainOptions"    # Landroid/os/Bundle;
    .param p3, "sideTaskId"    # I
    .param p4, "sideOptions"    # Landroid/os/Bundle;
    .param p5, "sidePosition"    # I
    .param p6, "splitRatio"    # F
    .param p7, "remoteTransition"    # Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 602
    move-object v1, p0

    iget-object v0, v1, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    iget-object v2, v1, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    .line 605
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/RemoteTransition;

    move-result-object v9

    .line 604
    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v3, "Failed call startTask"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 10
    .param p1, "mainTaskId"    # I
    .param p2, "mainOptions"    # Landroid/os/Bundle;
    .param p3, "sideTaskId"    # I
    .param p4, "sideOptions"    # Landroid/os/Bundle;
    .param p5, "sidePosition"    # I
    .param p6, "splitRatio"    # F
    .param p7, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 618
    move-object v1, p0

    iget-object v0, v1, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    iget-object v2, v1, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v3, "Failed call startTasksWithLegacyTransition"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopOneHandedMode()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v0, :cond_0

    .line 720
    :try_start_0
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/IOneHanded;->stopOneHanded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call stopOneHandedMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopScreenPinning()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call stopScreenPinning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "destinationBounds"    # Landroid/graphics/Rect;
    .param p4, "overlay"    # Landroid/view/SurfaceControl;

    .line 563
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/IPip;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call stopSwipePipToHome"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public toggleNotificationPanel()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    .line 501
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->toggleNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call toggleNotificationPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 832
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_0

    .line 834
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->unregisterRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call unregisterRecentTasksListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 840
    return-void
.end method

.method public unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 3
    .param p1, "remoteTransition"    # Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 746
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v0, :cond_0

    .line 748
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/RemoteTransition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemote(Landroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call registerRemoteTransition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 588
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_0

    .line 590
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call unregisterSplitScreenListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 596
    return-void
.end method
