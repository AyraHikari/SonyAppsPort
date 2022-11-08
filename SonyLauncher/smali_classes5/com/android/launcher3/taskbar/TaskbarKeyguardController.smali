.class public Lcom/android/launcher3/taskbar/TaskbarKeyguardController;
.super Ljava/lang/Object;
.source "TaskbarKeyguardController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# static fields
.field private static final KEYGUARD_SYSUI_FLAGS:I = 0x6003c8


# instance fields
.field private mBouncerShowing:Z

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mIsScreenOff:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardSysuiFlags:I

.field private mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsScreenOff(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mIsScreenOff:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 50
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 51
    return-void
.end method

.method private updateIconsForBouncer()V
    .locals 7

    .line 95
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 96
    .local v1, "disableBack":Z
    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 97
    .local v4, "disableRecent":Z
    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 98
    .local v0, "disableHome":Z
    :goto_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    .line 100
    .local v5, "onlyBackEnabled":Z
    :goto_3
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 101
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mBouncerShowing:Z

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    .line 103
    .local v2, "showBackForBouncer":Z
    :goto_4
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setBackForBouncer(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarKeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    .line 117
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 114
    const-string v3, "%s\tmKeyguardSysuiFlags=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mBouncerShowing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmBouncerShowing=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mIsScreenOff:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\tmIsScreenOff=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 4
    .param p1, "navbarButtonUIController"    # Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public isScreenOff()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mIsScreenOff:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public setScreenOn()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mIsScreenOff:Z

    .line 89
    return-void
.end method

.method public updateStateForSysuiFlags(I)V
    .locals 8
    .param p1, "systemUiStateFlags"    # I

    .line 59
    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 60
    .local v0, "bouncerShowing":Z
    :goto_0
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 62
    .local v3, "keyguardShowing":Z
    :goto_1
    and-int/lit16 v4, p1, 0x200

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 64
    .local v4, "keyguardOccluded":Z
    :goto_2
    const/high16 v5, 0x200000

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    .line 66
    .local v5, "dozing":Z
    :goto_3
    const v6, 0x6003c8

    and-int/2addr v6, p1

    .line 67
    .local v6, "interestingKeyguardFlags":I
    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    if-ne v6, v7, :cond_4

    .line 68
    return-void

    .line 70
    :cond_4
    iput v6, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    .line 72
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mBouncerShowing:Z

    .line 74
    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-nez v3, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    invoke-virtual {v7, v1, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setKeyguardVisible(ZZ)V

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->updateIconsForBouncer()V

    .line 78
    if-eqz v3, :cond_7

    .line 79
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v7, 0x7ffff

    invoke-static {v1, v2, v7}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 81
    :cond_7
    return-void
.end method
