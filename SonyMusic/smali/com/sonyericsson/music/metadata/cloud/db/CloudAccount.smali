.class public final Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;
.super Ljava/lang/Object;
.source "CloudAccount.java"


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mId:I

.field private final mLastSyncDate:J

.field private final mServiceId:I

.field private final mState:I

.field private final mSyncState:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/sonyericsson/music/common/CursorWrapper;->wrap(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/CursorWrapper;

    move-result-object p1

    const-string v0, "_id"

    .line 27
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mId:I

    const-string v0, "service_id"

    .line 28
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mServiceId:I

    const-string v0, "name"

    .line 29
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mAccountName:Ljava/lang/String;

    const-string v0, "state"

    .line 30
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mState:I

    const-string v0, "sync_state"

    .line 31
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mSyncState:I

    const-string v0, "last_sync_date"

    .line 32
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mLastSyncDate:J

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mId:I

    return v0
.end method

.method public getLastSyncDate()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mLastSyncDate:J

    return-wide v0
.end method

.method public getServiceId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mServiceId:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mState:I

    return v0
.end method

.method public getSyncState()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->mSyncState:I

    return v0
.end method
