.class Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;
.super Ljava/lang/Object;
.source "GroupedRecentTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 90
    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 1
    .param p1, "size"    # I

    .line 93
    new-array v0, p1, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;->newArray(I)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p1

    return-object p1
.end method
