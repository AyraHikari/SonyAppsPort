.class public Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Default;
.super Ljava/lang/Object;
.source "IStartingWindowListener.java"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/IStartingWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/IStartingWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTaskLaunching(III)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "supportedType"    # I
    .param p3, "splashScreenBackgroundColor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
