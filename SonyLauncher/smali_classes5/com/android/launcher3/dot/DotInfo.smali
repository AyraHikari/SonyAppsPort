.class public Lcom/android/launcher3/dot/DotInfo;
.super Ljava/lang/Object;
.source "DotInfo.java"


# static fields
.field public static final MAX_COUNT:I = 0x3e7


# instance fields
.field private final mNotificationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 5
    .param p1, "notificationKey"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 51
    .local v0, "indexOfPrevKey":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationKeyData;

    :goto_0
    nop

    .line 53
    .local v1, "prevKey":Lcom/android/launcher3/notification/NotificationKeyData;
    if-eqz v1, :cond_2

    .line 54
    iget v2, v1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iget v3, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    if-ne v2, v3, :cond_1

    .line 55
    const/4 v2, 0x0

    return v2

    .line 58
    :cond_1
    iget v2, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    iget v3, v1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    .line 59
    iget v3, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    .line 60
    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iput v2, v1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    .line 61
    const/4 v2, 0x1

    return v2

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    .local v2, "added":Z
    if-eqz v2, :cond_3

    .line 65
    iget v3, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    iget v4, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    .line 67
    :cond_3
    return v2
.end method

.method public getNotificationCount()I
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getNotificationKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    return-object v0
.end method

.method public removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 3
    .param p1, "notificationKey"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 76
    iget v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    .line 78
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
