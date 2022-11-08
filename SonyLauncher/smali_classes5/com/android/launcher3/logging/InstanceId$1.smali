.class Lcom/android/launcher3/logging/InstanceId$1;
.super Ljava/lang/Object;
.source "InstanceId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/launcher3/logging/InstanceId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/logging/InstanceId;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 99
    new-instance v0, Lcom/android/launcher3/logging/InstanceId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/logging/InstanceId;-><init>(Landroid/os/Parcel;Lcom/android/launcher3/logging/InstanceId-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/InstanceId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/logging/InstanceId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/launcher3/logging/InstanceId;
    .locals 1
    .param p1, "size"    # I

    .line 104
    new-array v0, p1, [Lcom/android/launcher3/logging/InstanceId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/InstanceId$1;->newArray(I)[Lcom/android/launcher3/logging/InstanceId;

    move-result-object p1

    return-object p1
.end method
