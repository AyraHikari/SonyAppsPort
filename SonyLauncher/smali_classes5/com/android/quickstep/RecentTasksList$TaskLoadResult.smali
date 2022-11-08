.class Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
.super Ljava/util/ArrayList;
.source "RecentTasksList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentTasksList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskLoadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/quickstep/util/GroupTask;",
        ">;"
    }
.end annotation


# instance fields
.field final mKeysOnly:Z

.field final mRequestId:I


# direct methods
.method constructor <init>(IZI)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "keysOnly"    # Z
    .param p3, "size"    # I

    .line 251
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    iput p1, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    .line 253
    iput-boolean p2, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mKeysOnly:Z

    .line 254
    return-void
.end method


# virtual methods
.method isValidForRequest(IZ)Z
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "loadKeysOnly"    # Z

    .line 257
    iget v0, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mKeysOnly:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
