.class public abstract Lcom/google/android/libraries/a/b;
.super Lcom/google/android/a/b;
.source "ILauncherOverlay.java"

# interfaces
.implements Lcom/google/android/libraries/a/a;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/libraries/a/a;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/libraries/a/a;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/libraries/a/a;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/libraries/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/a/c;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
