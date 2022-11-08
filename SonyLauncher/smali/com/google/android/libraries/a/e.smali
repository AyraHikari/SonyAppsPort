.class public abstract Lcom/google/android/libraries/a/e;
.super Lcom/google/android/a/b;
.source "ILauncherOverlayCallback.java"

# interfaces
.implements Lcom/google/android/libraries/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-direct {p0, v0}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 10
    const/4 p1, 0x0

    return p1

    .line 7
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/a/e;->a(I)V

    .line 9
    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/a/e;->a(F)V

    .line 6
    nop

    .line 11
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
