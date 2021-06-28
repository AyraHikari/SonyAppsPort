.class public Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;
.super Ljava/lang/Object;
.source "LabelCursorAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LabelCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultIndexer"
.end annotation


# instance fields
.field private mLocalCol:I

.field private final mLocalColName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->mLocalCol:I

    .line 366
    iput-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->mLocalColName:Ljava/lang/String;

    return-void
.end method

.method private getColumn(Landroid/database/Cursor;)I
    .locals 2

    .line 375
    iget v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->mLocalCol:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->mLocalColName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->mLocalCol:I

    .line 378
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->mLocalCol:I

    return p1
.end method


# virtual methods
.method public getStringIndex(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 371
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;->getColumn(Landroid/database/Cursor;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/StringUtils;->getIndexCharacterFromTitle(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
