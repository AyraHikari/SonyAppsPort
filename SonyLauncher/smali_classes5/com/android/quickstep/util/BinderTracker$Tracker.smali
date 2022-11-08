.class Lcom/android/quickstep/util/BinderTracker$Tracker;
.super Ljava/lang/Object;
.source "BinderTracker.java"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/BinderTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactEnded(Ljava/lang/Object;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "code"    # I

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "BinderTracker"

    const-string v2, "Binder call on ui thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
