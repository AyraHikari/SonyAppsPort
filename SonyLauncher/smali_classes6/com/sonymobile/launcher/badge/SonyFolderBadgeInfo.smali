.class public Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
.super Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
.source "SonyFolderBadgeInfo.java"


# static fields
.field private static final MIN_COUNT:I


# instance fields
.field private mNumBadgeCounts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 24
    return-void
.end method


# virtual methods
.method public addSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V
    .locals 2
    .param p1, "badgeToAdd"    # Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 27
    if-nez p1, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    invoke-virtual {p1}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getTotalCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    .line 31
    return-void
.end method

.method public getTotalCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    return v0
.end method

.method public getTotalCountAsString()Ljava/lang/String;
    .locals 2

    .line 50
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_0

    .line 51
    const-string v0, "999+"

    return-object v0

    .line 52
    :cond_0
    if-lez v0, :cond_1

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasBadge()Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public subtractSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V
    .locals 2
    .param p1, "badgeToSubtract"    # Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 34
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    invoke-virtual {p1}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getTotalCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->mNumBadgeCounts:I

    .line 38
    return-void
.end method
