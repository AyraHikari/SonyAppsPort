.class public Lcom/sonyericsson/music/search/Search;
.super Ljava/lang/Object;
.source "Search.java"


# static fields
.field private static final DELIMITERS:Ljava/lang/String; = "[-\\., ]+"


# instance fields
.field private mAfterDelimiterMatcher:Ljava/util/regex/Matcher;

.field private mAlbumCol:I

.field private mAlbumIdCol:I

.field private mAllTokensAnywhereMatcher:Ljava/util/regex/Matcher;

.field private mAnywhereMatcher:Ljava/util/regex/Matcher;

.field private mArtistCol:I

.field private mArtistIdCol:I

.field private mContentIdCol:I

.field private mCursor:Landroid/database/Cursor;

.field private mStartMatcher:Ljava/util/regex/Matcher;

.field private mTitleCol:I


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private addSearchResult(Lcom/sonyericsson/music/search/SearchResult;Lcom/sonyericsson/music/search/SearchConstants$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 166
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->NO_MATCH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 168
    iget-object v4, v0, Lcom/sonyericsson/music/search/Search;->mStartMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    goto/16 :goto_0

    .line 170
    :cond_0
    iget-object v4, v0, Lcom/sonyericsson/music/search/Search;->mAfterDelimiterMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    goto :goto_0

    .line 172
    :cond_1
    iget-object v4, v0, Lcom/sonyericsson/music/search/Search;->mAnywhereMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/music/search/Search;->mStartMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->MEDIUM:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, v0, Lcom/sonyericsson/music/search/Search;->mAllTokensAnywhereMatcher:Ljava/util/regex/Matcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->MEDIUM:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    goto :goto_0

    .line 179
    :cond_4
    iget-object v1, v0, Lcom/sonyericsson/music/search/Search;->mAfterDelimiterMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    goto :goto_0

    .line 181
    :cond_5
    iget-object v1, v0, Lcom/sonyericsson/music/search/Search;->mAnywhereMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 185
    :cond_6
    :goto_0
    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->NO_MATCH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    if-eq v3, v1, :cond_7

    .line 186
    new-instance v1, Lcom/sonyericsson/music/search/SearchItem;

    sget-object v6, Lcom/sonyericsson/music/search/SearchConstants$Source;->MEDIA_STORE:Lcom/sonyericsson/music/search/SearchConstants$Source;

    .line 191
    invoke-virtual {v3}, Lcom/sonyericsson/music/search/SearchConstants$Priority;->value()I

    move-result v13

    move-object v4, v1

    move-object/from16 v5, p2

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p6

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v13}, Lcom/sonyericsson/music/search/SearchItem;-><init>(Lcom/sonyericsson/music/search/SearchConstants$Type;Lcom/sonyericsson/music/search/SearchConstants$Source;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, p1

    .line 186
    invoke-interface {p1, v1}, Lcom/sonyericsson/music/search/SearchResult;->add(Lcom/sonyericsson/music/search/SearchItem;)V

    :cond_7
    return-void
.end method

.method private cacheColumnIndices(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "_id"

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/search/Search;->mContentIdCol:I

    const-string v0, "artist_id"

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/search/Search;->mArtistIdCol:I

    const-string v0, "album_id"

    .line 203
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/search/Search;->mAlbumIdCol:I

    const-string v0, "artist"

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/search/Search;->mArtistCol:I

    const-string v0, "album"

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/search/Search;->mAlbumCol:I

    const-string v0, "title"

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/search/Search;->mTitleCol:I

    return-void
.end method

.method private static denull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static prepare(Landroid/database/Cursor;)Lcom/sonyericsson/music/search/Search;
    .locals 1

    .line 56
    new-instance v0, Lcom/sonyericsson/music/search/Search;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/Search;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method private searchRow(Landroid/database/Cursor;Lcom/sonyericsson/music/search/SearchQueryResult;)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 112
    iget v1, v11, Lcom/sonyericsson/music/search/Search;->mAlbumCol:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 113
    iget v1, v11, Lcom/sonyericsson/music/search/Search;->mArtistCol:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 114
    iget v1, v11, Lcom/sonyericsson/music/search/Search;->mTitleCol:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    iget v1, v11, Lcom/sonyericsson/music/search/Search;->mArtistIdCol:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 116
    iget v1, v11, Lcom/sonyericsson/music/search/Search;->mAlbumIdCol:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 117
    iget v1, v11, Lcom/sonyericsson/music/search/Search;->mContentIdCol:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string v4, ""

    .line 126
    iget-object v0, v11, Lcom/sonyericsson/music/search/Search;->mAnywhereMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    .line 127
    iget-object v0, v11, Lcom/sonyericsson/music/search/Search;->mAnywhereMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    .line 128
    iget-object v0, v11, Lcom/sonyericsson/music/search/Search;->mAnywhereMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v19, :cond_0

    .line 133
    sget-object v2, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 134
    invoke-static {v13}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 135
    invoke-static {v13}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v6, v13

    .line 136
    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/music/search/Search;->addSearchResult(Lcom/sonyericsson/music/search/SearchResult;Lcom/sonyericsson/music/search/SearchConstants$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    :cond_0
    if-nez v20, :cond_1

    if-eqz v19, :cond_2

    .line 143
    :cond_1
    sget-object v2, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 144
    invoke-static {v13, v12}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 145
    invoke-static {v12}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v13}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v5, v12

    move-object v6, v13

    move-wide v8, v15

    .line 147
    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/music/search/Search;->addSearchResult(Lcom/sonyericsson/music/search/SearchResult;Lcom/sonyericsson/music/search/SearchConstants$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    :cond_2
    if-nez v21, :cond_3

    if-nez v20, :cond_3

    if-eqz v19, :cond_4

    .line 154
    :cond_3
    sget-object v2, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 155
    invoke-static {v13, v12}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 156
    invoke-static {v14}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v13}, Lcom/sonyericsson/music/search/Search;->denull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-wide/from16 v8, v17

    .line 158
    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/music/search/Search;->addSearchResult(Lcom/sonyericsson/music/search/SearchResult;Lcom/sonyericsson/music/search/SearchConstants$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchCancelCallback;)Lcom/sonyericsson/music/search/SearchQueryResult;
    .locals 5

    .line 71
    new-instance v0, Lcom/sonyericsson/music/search/SearchQueryResult;

    invoke-direct {v0}, Lcom/sonyericsson/music/search/SearchQueryResult;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, ""

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/music/search/Search;->mStartMatcher:Ljava/util/regex/Matcher;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[-\\., ]+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, ""

    .line 82
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/music/search/Search;->mAfterDelimiterMatcher:Ljava/util/regex/Matcher;

    .line 83
    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, ""

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/search/Search;->mAnywhereMatcher:Ljava/util/regex/Matcher;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?=.*\\Q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[-\\., ]+"

    const-string v4, "\\\\E)(?=.*\\\\Q"

    .line 91
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\E)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v1, ""

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/search/Search;->mAllTokensAnywhereMatcher:Ljava/util/regex/Matcher;

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/Search;->cacheColumnIndices(Landroid/database/Cursor;)V

    const/4 p1, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/search/Search;->searchRow(Landroid/database/Cursor;Lcom/sonyericsson/music/search/SearchQueryResult;)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/sonyericsson/music/search/SearchCancelCallback;->isCancelled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 103
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/music/search/Search;->mCursor:Landroid/database/Cursor;

    .line 105
    throw p2

    :cond_2
    :goto_0
    return-object v0
.end method
