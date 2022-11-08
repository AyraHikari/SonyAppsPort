.class public Landroidx/slice/SliceStructure;
.super Ljava/lang/Object;
.source "SliceStructure.java"


# instance fields
.field private final mStructure:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 2
    .param p1, "s"    # Landroidx/slice/Slice;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroidx/slice/SliceStructure;->getStructure(Landroidx/slice/Slice;Ljava/lang/StringBuilder;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/SliceStructure;->mStructure:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 3
    .param p1, "s"    # Landroidx/slice/SliceItem;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroidx/slice/SliceStructure;->getStructure(Landroidx/slice/SliceItem;Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/SliceStructure;->mStructure:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    .line 71
    :goto_1
    return-void
.end method

.method private static getStructure(Landroidx/slice/Slice;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "s{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 98
    .local v1, "item":Landroidx/slice/SliceItem;
    invoke-static {v1, p1}, Landroidx/slice/SliceStructure;->getStructure(Landroidx/slice/SliceItem;Ljava/lang/StringBuilder;)V

    .line 99
    .end local v1    # "item":Landroidx/slice/SliceItem;
    goto :goto_0

    .line 100
    :cond_0
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method

.method private static getStructure(Landroidx/slice/SliceItem;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 119
    :pswitch_0
    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    goto :goto_2

    .line 116
    :pswitch_1
    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    goto :goto_2

    .line 109
    :pswitch_2
    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "range"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/SliceStructure;->getStructure(Landroidx/slice/Slice;Ljava/lang/StringBuilder;)V

    .line 114
    goto :goto_2

    .line 106
    :pswitch_3
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/SliceStructure;->getStructure(Landroidx/slice/Slice;Ljava/lang/StringBuilder;)V

    .line 107
    nop

    .line 129
    :goto_2
    return-void

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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Landroidx/slice/SliceStructure;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/slice/SliceStructure;

    .line 92
    .local v0, "other":Landroidx/slice/SliceStructure;
    iget-object v1, p0, Landroidx/slice/SliceStructure;->mStructure:Ljava/lang/String;

    iget-object v2, v0, Landroidx/slice/SliceStructure;->mStructure:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/slice/SliceStructure;->mStructure:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
