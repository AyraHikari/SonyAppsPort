.class public Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
.super Ljava/lang/Object;
.source "SonyBadgeInfo.java"


# static fields
.field public static final MAX_COUNT:I = 0x3e7


# instance fields
.field private mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0
    .param p1, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 30
    return-void
.end method


# virtual methods
.method public getNotificationCount()I
    .locals 2

    .line 33
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->mTotalCount:I

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->mTotalCount:I

    return v0
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 45
    iput p1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->mTotalCount:I

    .line 46
    return-void
.end method
