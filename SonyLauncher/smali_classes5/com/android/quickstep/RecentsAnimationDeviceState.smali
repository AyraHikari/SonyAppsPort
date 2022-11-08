.class public Lcom/android/quickstep/RecentsAnimationDeviceState;
.super Ljava/lang/Object;
.source "RecentsAnimationDeviceState.java"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field static final SUPPORT_ONE_HANDED_MODE:Ljava/lang/String; = "ro.support_one_handed_mode"


# instance fields
.field private mAssistantAvailable:Z

.field private mAssistantVisibility:F

.field private final mCanImeRenderGesturalNavButtons:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeferredGestureRegion:Landroid/graphics/Region;

.field private final mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field private final mDisplayId:I

.field private mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

.field private mExclusionRegion:Landroid/graphics/Region;

.field private mGestureBlockingTaskId:I

.field private mIsOneHandedModeEnabled:Z

.field private final mIsOneHandedModeSupported:Z

.field private mIsSwipeToNotificationEnabled:Z

.field private mIsUserSetupComplete:Z

.field private mIsUserUnlocked:Z

.field private mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

.field private final mOnDestroyActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPipIsActive:Z

.field private final mPipListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

.field private mSystemUiStateFlags:I

.field private final mUserUnlockedActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fputmExclusionRegion(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionRegion:Landroid/graphics/Region;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUserUnlocked(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipIsActive(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUserUnlocked(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->notifyUserUnlocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInstanceForTouches"    # Z

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    nop

    .line 104
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mCanImeRenderGesturalNavButtons:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mOnDestroyActions:Ljava/util/ArrayList;

    .line 109
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 112
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$1;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mGestureBlockingTaskId:I

    .line 146
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    .line 147
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    iput-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayId:I

    .line 149
    const-string v3, "ro.support_one_handed_mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeSupported:Z

    .line 150
    sget-object v4, Lcom/android/quickstep/RotationTouchHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/RotationTouchHelper;

    iput-object v4, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    .line 151
    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {v4}, Lcom/android/quickstep/RotationTouchHelper;->init()V

    .line 155
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    invoke-direct {p0, v5}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 160
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    .line 161
    if-nez v4, :cond_1

    .line 162
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    :cond_1
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 168
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState$2;

    invoke-direct {v0, p0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState$2;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    .line 176
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)V

    invoke-direct {p0, v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 180
    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    .line 181
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda6;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 183
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    .line 184
    .local v0, "settingsCache":Lcom/android/launcher3/util/SettingsCache;
    if-eqz v3, :cond_2

    .line 185
    const-string v1, "one_handed_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, "oneHandedUri":Landroid/net/Uri;
    new-instance v3, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 188
    .local v3, "onChangeListener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    .line 190
    new-instance v4, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0, v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 191
    .end local v1    # "oneHandedUri":Landroid/net/Uri;
    .end local v3    # "onChangeListener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    goto :goto_0

    .line 192
    :cond_2
    iput-boolean v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    .line 195
    :goto_0
    nop

    .line 196
    const-string v1, "swipe_bottom_to_notification_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    .local v1, "swipeBottomNotificationUri":Landroid/net/Uri;
    new-instance v3, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 199
    .restart local v3    # "onChangeListener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    .line 201
    new-instance v4, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0, v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 203
    const-string v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    .local v4, "setupCompleteUri":Landroid/net/Uri;
    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserSetupComplete:Z

    .line 205
    if-nez v5, :cond_3

    .line 206
    new-instance v5, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda11;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 207
    .local v5, "userSetupChangeListener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 208
    new-instance v6, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;

    invoke-direct {v6, v0, v4, v5}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0, v6}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 212
    .end local v5    # "userSetupChangeListener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6, v2}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_1

    .line 214
    :catch_0
    move-exception v2

    .line 217
    :goto_1
    new-instance v2, Lcom/android/quickstep/RecentsAnimationDeviceState$3;

    invoke-direct {v2, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$3;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 228
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 229
    new-instance v2, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method static synthetic lambda$addNavigationModeChangedCallback$9(Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p0, "callback"    # Ljava/lang/Runnable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 252
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 255
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$3(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0
    .param p0, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;
    .param p1, "oneHandedUri"    # Landroid/net/Uri;
    .param p2, "onChangeListener"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0
    .param p0, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;
    .param p1, "swipeBottomNotificationUri"    # Landroid/net/Uri;
    .param p2, "onChangeListener"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method static synthetic lambda$new$7(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0
    .param p0, "settingsCache"    # Lcom/android/launcher3/util/SettingsCache;
    .param p1, "setupCompleteUri"    # Landroid/net/Uri;
    .param p2, "userSetupChangeListener"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private notifyUserUnlocked()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 349
    .local v1, "action":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 350
    .end local v1    # "action":Ljava/lang/Runnable;
    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 353
    return-void
.end method

.method private runOnDestroy(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 234
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mOnDestroyActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method


# virtual methods
.method public addNavigationModeChangedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 251
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    .line 256
    .local v0, "listener":Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 257
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 258
    new-instance v1, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public canStartSystemGesture()Z
    .locals 5

    .line 388
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    .line 390
    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->isTaskListFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 391
    .local v0, "canStartWithNavHidden":Z
    :goto_1
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_3

    and-int/lit16 v4, v1, 0x800

    if-nez v4, :cond_3

    const/high16 v4, 0x80000

    and-int/2addr v4, v1

    if-nez v4, :cond_3

    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public canTriggerAssistantAction(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 538
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    .line 539
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 538
    const-string v1, "somc.lock_assistant_gesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 542
    .local v0, "isAssistantGestureLocked":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantAvailable:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    .line 543
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    .line 544
    invoke-virtual {v3, p1}, Lcom/android/quickstep/RotationTouchHelper;->touchInAssistantRegion(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isLockToAppActive()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    nop

    .line 542
    :goto_1
    return v2
.end method

.method public canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 556
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 557
    return v1

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    .line 561
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 560
    const-string v2, "somc.lock_one_handed_mode_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 564
    .local v0, "isOneHandedModeGestureLocked":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    if-eqz v3, :cond_3

    .line 565
    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v3

    .line 566
    .local v3, "displayInfo":Lcom/android/launcher3/util/DisplayController$Info;
    iget-object v4, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/RotationTouchHelper;->touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 570
    .end local v3    # "displayInfo":Lcom/android/launcher3/util/DisplayController$Info;
    :cond_3
    return v1
.end method

.method public destroy()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mOnDestroyActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 242
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 243
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 596
    const-string v0, "DeviceState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canStartSystemGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  systemUiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  systemUiFlagsDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    .line 600
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  assistantAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  assistantDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    .line 603
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isUserUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isOneHandedModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSwipeToNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  deferredGestureRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  pipIsActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RotationTouchHelper;->dump(Ljava/io/PrintWriter;)V

    .line 610
    return-void
.end method

.method public getAssistantVisibility()F
    .locals 1

    .line 530
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantVisibility:F

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayId:I

    return v0
.end method

.method public getNavBarPosition()Lcom/android/quickstep/util/NavBarPosition;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    return-object v0
.end method

.method public getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    return-object v0
.end method

.method public getSystemUiStateFlags()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    return v0
.end method

.method public isAccessibilityMenuAvailable()Z
    .locals 1

    .line 453
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAccessibilityMenuShortcutAvailable()Z
    .locals 1

    .line 460
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistantGestureIsConstrained()Z
    .locals 1

    .line 418
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBubblesExpanded()Z
    .locals 1

    .line 425
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isButtonNavMode()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullyGesturalNavMode()Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGesturalNavMode()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    return v0
.end method

.method public isGestureBlockedTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)Z
    .locals 2
    .param p1, "taskInfo"    # Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    .line 366
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mGestureBlockingTaskId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHomeDisabled()Z
    .locals 1

    .line 467
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImeRenderingNavButtons()Z
    .locals 2

    .line 591
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mCanImeRenderGesturalNavButtons:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 498
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isInExclusionRegion(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 507
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionRegion:Landroid/graphics/Region;

    .line 508
    .local v0, "exclusionRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 508
    :goto_0
    return v1
.end method

.method public isKeyguardShowingOccluded()Z
    .locals 1

    .line 404
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockToAppActive()Z
    .locals 1

    .line 446
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v0

    return v0
.end method

.method public isNotificationPanelExpanded()Z
    .locals 1

    .line 432
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandedModeActive()Z
    .locals 2

    .line 481
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandedModeEnabled()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    return v0
.end method

.method public isOverviewDisabled()Z
    .locals 1

    .line 474
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPipActive()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z

    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 2

    .line 411
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSwipeToNotificationEnabled()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    return v0
.end method

.method public isSystemUiDialogShowing()Z
    .locals 2

    .line 439
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoButtonNavMode()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserSetupComplete:Z

    return v0
.end method

.method public isUserUnlocked()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    return v0
.end method

.method synthetic lambda$addNavigationModeChangedCallback$10$com-android-quickstep-RecentsAnimationDeviceState(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 258
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-quickstep-RecentsAnimationDeviceState()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method synthetic lambda$new$1$com-android-quickstep-RecentsAnimationDeviceState()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method synthetic lambda$new$2$com-android-quickstep-RecentsAnimationDeviceState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 187
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    return-void
.end method

.method synthetic lambda$new$4$com-android-quickstep-RecentsAnimationDeviceState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    return-void
.end method

.method synthetic lambda$new$6$com-android-quickstep-RecentsAnimationDeviceState(Z)V
    .locals 0
    .param p1, "e"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserSetupComplete:Z

    return-void
.end method

.method synthetic lambda$new$8$com-android-quickstep-RecentsAnimationDeviceState()V
    .locals 2

    .line 230
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 263
    and-int/lit8 v0, p3, 0x12

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 265
    new-instance v1, Lcom/android/quickstep/util/NavBarPosition;

    invoke-direct {v1, v0, p2}, Lcom/android/quickstep/util/NavBarPosition;-><init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;)V

    iput-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    .line 267
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->register()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->unregister()V

    .line 273
    :cond_1
    :goto_0
    return-void
.end method

.method public onOneHandedModeChanged(I)V
    .locals 1
    .param p1, "newGesturalHeight"    # I

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RotationTouchHelper;->setGesturalHeight(I)V

    .line 277
    return-void
.end method

.method public runOnUserUnlocked(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 326
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_0
    return-void
.end method

.method public setAssistantAvailable(Z)V
    .locals 0
    .param p1, "assistantAvailable"    # Z

    .line 516
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantAvailable:Z

    .line 517
    return-void
.end method

.method public setAssistantVisibility(F)V
    .locals 0
    .param p1, "visibility"    # F

    .line 523
    iput p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantVisibility:F

    .line 524
    return-void
.end method

.method public setDeferredGestureRegion(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "deferredGestureRegion"    # Landroid/graphics/Region;

    .line 489
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 490
    return-void
.end method

.method public setGestureBlockingTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 359
    iput p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mGestureBlockingTaskId:I

    .line 360
    return-void
.end method

.method public setSystemUiFlags(I)V
    .locals 0
    .param p1, "stateFlags"    # I

    .line 373
    iput p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    .line 374
    return-void
.end method
