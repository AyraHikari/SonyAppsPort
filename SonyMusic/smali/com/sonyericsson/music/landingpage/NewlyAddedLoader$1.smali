.class Lcom/sonyericsson/music/landingpage/NewlyAddedLoader$1;
.super Ljava/lang/Object;
.source "NewlyAddedLoader.java"

# interfaces
.implements Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader$1;->this$0:Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v1, "date_created"

    .line 206
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "date_updated"

    .line 208
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 209
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 210
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    move-wide v1, v3

    :cond_0
    const-string p1, "date_added"

    .line 214
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 215
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    return v0

    :cond_1
    cmp-long v0, v1, p1

    if-gez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method
