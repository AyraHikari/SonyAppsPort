.class Lcom/android/wm/shell/util/StagedSplitBounds$1;
.super Ljava/lang/Object;
.source "StagedSplitBounds.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/util/StagedSplitBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/wm/shell/util/StagedSplitBounds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/wm/shell/util/StagedSplitBounds;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 126
    new-instance v0, Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/util/StagedSplitBounds;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/StagedSplitBounds$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/wm/shell/util/StagedSplitBounds;
    .locals 1
    .param p1, "size"    # I

    .line 131
    new-array v0, p1, [Lcom/android/wm/shell/util/StagedSplitBounds;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/StagedSplitBounds$1;->newArray(I)[Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object p1

    return-object p1
.end method
