.class public Lcom/sonyericsson/music/common/HighResAttachedCursor;
.super Landroid/database/CursorWrapper;
.source "HighResAttachedCursor.java"


# instance fields
.field private final mHighResMedia:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/music/common/HighResAttachedCursor;->mHighResMedia:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getHighResMedia()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/music/common/HighResAttachedCursor;->mHighResMedia:Ljava/util/HashSet;

    return-object v0
.end method
