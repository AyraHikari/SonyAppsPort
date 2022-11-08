.class public Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
.super Landroid/database/CursorWrapper;
.source "LauncherDbCursor.java"


# instance fields
.field private final mCellXIndex:I

.field private final mCellYIndex:I

.field private final mContainerIndex:I

.field private final mIconResourceIndex:I

.field private final mIdIndex:I

.field private final mIntentIndex:I

.field private final mItemTypeIndex:I

.field private final mRankIndex:I

.field private final mScreenIndex:I

.field private final mSpanXIndex:I

.field private final mSpanYIndex:I

.field private final mTitleIndex:I

.field private final mWidgetIdIndex:I

.field private final mWidgetProviderIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 33
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 35
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mIdIndex:I

    .line 36
    const-string v0, "container"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mContainerIndex:I

    .line 37
    const-string v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mItemTypeIndex:I

    .line 38
    const-string v0, "screen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mScreenIndex:I

    .line 39
    const-string v0, "cellX"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mCellXIndex:I

    .line 40
    const-string v0, "cellY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mCellYIndex:I

    .line 41
    const-string v0, "spanX"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mSpanXIndex:I

    .line 42
    const-string v0, "spanY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mSpanYIndex:I

    .line 43
    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mIntentIndex:I

    .line 44
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mTitleIndex:I

    .line 45
    const-string v0, "iconResource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mIconResourceIndex:I

    .line 46
    const-string v0, "appWidgetProvider"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mWidgetProviderIndex:I

    .line 47
    const-string v0, "appWidgetId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mWidgetIdIndex:I

    .line 48
    const-string v0, "rank"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mRankIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mCellXIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getCellY()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mCellYIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getContainer()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mContainerIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIconResource()Ljava/lang/String;
    .locals 1

    .line 92
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mIconResourceIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .line 88
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mIntentIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mItemTypeIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRank()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mRankIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getScreen()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mSpanXIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mSpanYIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 84
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mTitleIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mWidgetIdIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getWidgetProvider()Ljava/lang/String;
    .locals 1

    .line 96
    iget v0, p0, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->mWidgetProviderIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
