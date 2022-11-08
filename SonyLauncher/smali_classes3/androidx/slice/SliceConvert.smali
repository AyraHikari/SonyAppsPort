.class public Landroidx/slice/SliceConvert;
.super Ljava/lang/Object;
.source "SliceConvert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceConvert"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;
    .locals 10
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 54
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 55
    :cond_0
    new-instance v0, Landroid/app/slice/Slice$Builder;

    .line 56
    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/Slice;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 57
    .local v0, "builder":Landroid/app/slice/Slice$Builder;
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 58
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItemArray()[Landroidx/slice/SliceItem;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 59
    .local v5, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v8, "slice"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v7, v3

    goto :goto_1

    :sswitch_1
    const-string v8, "input"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_2
    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v8, "text"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_4
    const-string v8, "long"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_5
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_6
    const-string v8, "bundle"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x7

    goto :goto_1

    :sswitch_7
    const-string v8, "action"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x3

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 83
    :pswitch_0
    iget-object v6, v5, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/slice/Slice$Builder;->addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto/16 :goto_2

    .line 80
    :pswitch_1
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 81
    goto :goto_2

    .line 77
    :pswitch_2
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getInt()I

    move-result v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 78
    goto :goto_2

    .line 74
    :pswitch_3
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 75
    goto :goto_2

    .line 71
    :pswitch_4
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-static {v7}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 72
    goto :goto_2

    .line 67
    :pswitch_5
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v8

    .line 67
    invoke-virtual {v0, v6, v7, v8}, Landroid/app/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 69
    goto :goto_2

    .line 64
    :pswitch_6
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 65
    goto :goto_2

    .line 61
    :pswitch_7
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-static {v6}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 62
    nop

    .line 58
    .end local v5    # "item":Landroidx/slice/SliceItem;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v1

    return-object v1

    .line 54
    .end local v0    # "builder":Landroid/app/slice/Slice$Builder;
    :cond_3
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .locals 3
    .param p0, "spec"    # Landroidx/slice/SliceSpec;

    .line 91
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Landroid/app/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static unwrap(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 97
    .local p0, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 98
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceSpec;

    .line 100
    .local v2, "spec":Landroidx/slice/SliceSpec;
    invoke-static {v2}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "spec":Landroidx/slice/SliceSpec;
    goto :goto_0

    .line 103
    :cond_0
    return-object v0
.end method

.method public static wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 10
    .param p0, "slice"    # Landroid/app/slice/Slice;
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    const-string v0, "The icon resource isn\'t available."

    const-string v1, "SliceConvert"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 112
    :cond_0
    new-instance v2, Landroidx/slice/Slice$Builder;

    .line 113
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 114
    .local v2, "builder":Landroidx/slice/Slice$Builder;
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 115
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v3

    invoke-static {v3}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    .line 116
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/slice/SliceItem;

    .line 117
    .local v4, "item":Landroid/app/slice/SliceItem;
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v7, "slice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "input"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "image"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_4
    const-string v7, "long"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_5
    const-string v7, "int"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string v7, "bundle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "action"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x3

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 149
    :pswitch_0
    new-instance v5, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 149
    invoke-virtual {v2, v5}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_3

    .line 146
    :pswitch_1
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 147
    goto/16 :goto_3

    .line 143
    :pswitch_2
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getInt()I

    move-result v5

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 144
    goto :goto_3

    .line 140
    :pswitch_3
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 141
    goto :goto_3

    .line 136
    :pswitch_4
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v6

    invoke-static {v6, p1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v6

    .line 137
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-virtual {v2, v5, v6, v7}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 138
    goto :goto_3

    .line 132
    :pswitch_5
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v7

    .line 132
    invoke-virtual {v2, v5, v6, v7}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 134
    goto :goto_3

    .line 123
    :pswitch_6
    :try_start_0
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-static {p1, v5}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 124
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v7

    .line 123
    invoke-virtual {v2, v5, v6, v7}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 127
    :catch_0
    move-exception v5

    .line 128
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_3

    .line 125
    :catch_1
    move-exception v5

    .line 126
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    goto :goto_3

    .line 119
    :pswitch_7
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v5

    invoke-static {v5, p1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 120
    nop

    .line 153
    .end local v4    # "item":Landroid/app/slice/SliceItem;
    :goto_3
    goto/16 :goto_0

    .line 154
    :cond_2
    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 111
    .end local v2    # "builder":Landroidx/slice/Slice$Builder;
    :cond_3
    :goto_4
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;
    .locals 3
    .param p0, "spec"    # Landroid/app/slice/SliceSpec;

    .line 158
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static wrap(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 169
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/SliceSpec;

    .line 171
    .local v2, "spec":Landroid/app/slice/SliceSpec;
    invoke-static {v2}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v2    # "spec":Landroid/app/slice/SliceSpec;
    goto :goto_0

    .line 174
    :cond_0
    return-object v0
.end method
