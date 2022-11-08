.class public Landroidx/slice/SliceUtils;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceUtils$SliceParseException;,
        Landroidx/slice/SliceUtils$SliceActionListener;,
        Landroidx/slice/SliceUtils$SerializeOptions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;

    .line 246
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    invoke-static {p1, p0, p2}, Landroidx/slice/SliceXml;->convertToBytes(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B

    move-result-object v0

    .line 251
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    return-object v1

    .line 248
    .end local v0    # "data":[B
    :pswitch_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;
    .locals 12
    .param p0, "s"    # Landroidx/slice/Slice;

    .line 127
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 130
    .local v0, "slice":Landroidx/slice/Slice$Builder;
    const-string v1, "long"

    const-string v2, "ttl"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 131
    .local v4, "ttlItem":Landroidx/slice/SliceItem;
    const-string v5, "millis"

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v7, v5, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 136
    :cond_0
    const-string v2, "last_updated"

    invoke-static {p0, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 138
    .local v1, "updatedItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v7, v5, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 143
    :cond_1
    const-string v2, "int"

    const-string v5, "color"

    invoke-static {p0, v2, v5, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 145
    .local v6, "colorItem":Landroidx/slice/SliceItem;
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 146
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getInt()I

    move-result v8

    new-array v9, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8, v5, v9}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 150
    :cond_2
    const-string v5, "layout_direction"

    invoke-static {p0, v2, v5, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 152
    .local v2, "layoutDirItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v8

    new-array v9, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8, v5, v9}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 157
    :cond_3
    invoke-static {v3, p0}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/SliceMetadata;->getSliceKeywords()Ljava/util/List;

    move-result-object v5

    .line 158
    .local v5, "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 159
    new-instance v8, Landroidx/slice/Slice$Builder;

    invoke-direct {v8, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 160
    .local v8, "sb":Landroidx/slice/Slice$Builder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 161
    .local v10, "keyword":Ljava/lang/String;
    new-array v11, v7, [Ljava/lang/String;

    invoke-virtual {v8, v10, v3, v11}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 162
    .end local v10    # "keyword":Ljava/lang/String;
    goto :goto_0

    .line 163
    :cond_4
    const-string v3, "keywords"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 167
    .end local v8    # "sb":Landroidx/slice/Slice$Builder;
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 169
    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 171
    :cond_6
    return-object v0
.end method

.method private static doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 5
    .param p0, "parcelName"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 327
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 328
    .local v1, "data":[B
    array-length v2, v1

    new-array v2, v2, [B

    .line 331
    .local v2, "buf":[B
    const/4 v3, 0x4

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_0

    .line 332
    return v4

    .line 334
    :cond_0
    array-length v3, v2

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_1

    .line 335
    return v4

    .line 337
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    return v4
.end method

.method static handleOptions(Landroid/content/Context;Landroidx/slice/SliceItemHolder;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "holder"    # Landroidx/slice/SliceItemHolder;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;

    .line 204
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "Cannot serialize action"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 227
    :pswitch_0
    invoke-virtual {p3}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 234
    :pswitch_1
    iput-object v2, p1, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_3

    .line 231
    :pswitch_2
    iput-object v2, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 232
    goto :goto_3

    .line 229
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_4
    invoke-virtual {p3}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iput-object v2, p1, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 225
    goto :goto_3

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_5
    invoke-virtual {p3}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 214
    :pswitch_6
    iget-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-static {p0, v0, p3}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_2

    .line 211
    :pswitch_7
    iput-object v2, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 212
    goto :goto_2

    .line 208
    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot serialize icon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :goto_2
    nop

    .line 239
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x5fb57ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static parseImageMode(Landroidx/slice/SliceItem;)I
    .locals 1
    .param p0, "iconItem"    # Landroidx/slice/SliceItem;

    .line 323
    invoke-static {p0}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v0

    return v0
.end method

.method public static parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "listener"    # Landroidx/slice/SliceUtils$SliceActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const-class v1, Landroidx/slice/Slice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "parcelName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 274
    invoke-static {v1, v0}, Landroidx/slice/SliceUtils;->doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v2

    .line 275
    .local v2, "usesParcel":Z
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 276
    if-eqz v2, :cond_0

    .line 278
    new-instance v3, Landroidx/slice/SliceUtils$2;

    invoke-direct {v3, p3}, Landroidx/slice/SliceUtils$2;-><init>(Landroidx/slice/SliceUtils$SliceActionListener;)V

    .line 284
    .local v3, "handler":Landroidx/slice/SliceItem$ActionHandler;
    sget-object v4, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 285
    :try_start_0
    new-instance v5, Landroidx/slice/SliceUtils$3;

    invoke-direct {v5, v3, p0}, Landroidx/slice/SliceUtils$3;-><init>(Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    sput-object v5, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 291
    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v5

    check-cast v5, Landroidx/slice/Slice;

    .line 292
    .local v5, "slice":Landroidx/slice/Slice;
    const-class v6, Ljava/lang/String;

    iget-object v7, v5, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v8, "cached"

    invoke-static {v6, v7, v8}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v5, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 294
    const/4 v6, 0x0

    sput-object v6, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 295
    monitor-exit v4

    .line 296
    return-object v5

    .line 295
    .end local v5    # "slice":Landroidx/slice/Slice;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 298
    .end local v3    # "handler":Landroidx/slice/SliceItem$ActionHandler;
    :cond_0
    invoke-static {p0, v0, p2, p3}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v3

    .line 299
    .local v3, "s":Landroidx/slice/Slice;
    const-class v4, Ljava/lang/String;

    iget-object v5, v3, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v6, "cached"

    invoke-static {v4, v5, v6}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 300
    return-object v3
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 190
    sget-object v0, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    new-instance v1, Landroidx/slice/SliceUtils$1;

    invoke-direct {v1, p1, p3}, Landroidx/slice/SliceUtils$1;-><init>(Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)V

    sput-object v1, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 197
    invoke-static {p0, p2}, Landroidx/versionedparcelable/ParcelUtils;->toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V

    .line 198
    const/4 v1, 0x0

    sput-object v1, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static setActionsAndUpdateIcons(Landroidx/slice/SliceItemHolder;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "holder"    # Landroidx/slice/SliceItemHolder;
    .param p1, "listener"    # Landroidx/slice/SliceItem$ActionHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "format"    # Ljava/lang/String;

    .line 306
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 313
    :pswitch_0
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mCallback:Ljava/lang/Object;

    goto :goto_2

    .line 308
    :pswitch_1
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    instance-of v0, v0, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0, p2}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 316
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_1
        0x5faa95b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stripSlice(Landroidx/slice/Slice;IZ)Landroidx/slice/Slice;
    .locals 8
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "mode"    # I
    .param p2, "isScrollable"    # Z

    .line 89
    new-instance v0, Landroidx/slice/widget/ListContent;

    invoke-direct {v0, p0}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    .line 90
    .local v0, "listContent":Landroidx/slice/widget/ListContent;
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    invoke-static {p0}, Landroidx/slice/SliceUtils;->copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    .line 92
    .local v1, "builder":Landroidx/slice/Slice$Builder;
    packed-switch p1, :pswitch_data_0

    .line 117
    :pswitch_0
    return-object p0

    .line 96
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v2

    .line 97
    .local v2, "shortcutAction":Landroidx/slice/core/SliceAction;
    if-eqz v2, :cond_0

    .line 98
    move-object v3, v2

    check-cast v3, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3, v1}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v3

    return-object v3

    .line 100
    :cond_0
    return-object p0

    .line 103
    .end local v2    # "shortcutAction":Landroidx/slice/core/SliceAction;
    :pswitch_2
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 104
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v2

    .line 105
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 106
    new-instance v3, Landroidx/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 107
    .local v3, "sb":Landroidx/slice/Slice$Builder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "actions"

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/core/SliceAction;

    .line 108
    .local v5, "action":Landroidx/slice/core/SliceAction;
    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-direct {v7, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v6

    .line 109
    .local v6, "b":Landroidx/slice/Slice$Builder;
    move-object v7, v5

    check-cast v7, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7, v6}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 110
    .end local v5    # "action":Landroidx/slice/core/SliceAction;
    .end local v6    # "b":Landroidx/slice/Slice$Builder;
    goto :goto_0

    .line 111
    :cond_1
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 113
    .end local v3    # "sb":Landroidx/slice/Slice$Builder;
    :cond_2
    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    return-object v3

    .line 120
    .end local v1    # "builder":Landroidx/slice/Slice$Builder;
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
