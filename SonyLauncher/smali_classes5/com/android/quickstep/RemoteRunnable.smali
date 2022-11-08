.class public interface abstract Lcom/android/quickstep/RemoteRunnable;
.super Ljava/lang/Object;
.source "RemoteRunnable.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static executeSafely(Lcom/android/quickstep/RemoteRunnable;)V
    .locals 3
    .param p0, "r"    # Lcom/android/quickstep/RemoteRunnable;

    .line 28
    :try_start_0
    invoke-interface {p0}, Lcom/android/quickstep/RemoteRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteRunnable"

    const-string v2, "Error calling remote method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
