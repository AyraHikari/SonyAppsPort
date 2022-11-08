.class public Lcom/android/launcher3/dot/FolderDotInfo;
.super Lcom/android/launcher3/dot/DotInfo;
.source "FolderDotInfo.java"


# static fields
.field private static final MIN_COUNT:I


# instance fields
.field private mNumNotifications:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V
    .locals 3
    .param p1, "dotToAdd"    # Lcom/android/launcher3/dot/DotInfo;

    .line 34
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    .line 38
    const/4 v1, 0x0

    const/16 v2, 0x3e7

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    .line 40
    return-void
.end method

.method public getNotificationCount()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    return v0
.end method

.method public hasDot()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation

    .line 58
    iget v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public subtractDotInfo(Lcom/android/launcher3/dot/DotInfo;)V
    .locals 3
    .param p1, "dotToSubtract"    # Lcom/android/launcher3/dot/DotInfo;

    .line 43
    if-nez p1, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    .line 47
    const/4 v1, 0x0

    const/16 v2, 0x3e7

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dot/FolderDotInfo;->mNumNotifications:I

    .line 49
    return-void
.end method
