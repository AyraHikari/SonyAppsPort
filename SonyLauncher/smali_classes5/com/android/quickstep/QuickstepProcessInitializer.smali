.class public Lcom/android/quickstep/QuickstepProcessInitializer;
.super Lcom/android/launcher3/MainProcessInitializer;
.source "QuickstepProcessInitializer.java"


# static fields
.field private static final SETUP_DELAY_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "QuickstepProcessInitializer"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/MainProcessInitializer;-><init>()V

    .line 42
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 51
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    const-string v2, "QuickstepProcessInitializer"

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 53
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 55
    const-string v3, "Disabling com.sonymobile.launcher, unable to run in a managed profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 60
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/MainProcessInitializer;->init(Landroid/content/Context;)V

    .line 63
    sget v1, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->setContextPriority(I)V

    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->enableBinderTracing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to enable binder tracing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
