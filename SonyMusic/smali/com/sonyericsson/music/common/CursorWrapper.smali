.class public Lcom/sonyericsson/music/common/CursorWrapper;
.super Ljava/lang/Object;
.source "CursorWrapper.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/music/common/CursorWrapper;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method public static final wrap(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/CursorWrapper;
    .locals 1

    .line 29
    new-instance v0, Lcom/sonyericsson/music/common/CursorWrapper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/common/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/music/common/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/music/common/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/music/common/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
