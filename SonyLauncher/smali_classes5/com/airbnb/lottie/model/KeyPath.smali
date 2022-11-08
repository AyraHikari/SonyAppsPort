.class public Lcom/airbnb/lottie/model/KeyPath;
.super Ljava/lang/Object;
.source "KeyPath.java"


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 2
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    iput-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 58
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 50
    return-void
.end method

.method private endsWithGlobstar()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 199
    const-string v0, "__container"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 71
    .local v0, "newKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    iget-object v1, v0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method

.method public fullyResolvesTo(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "depth"    # I

    .line 150
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 154
    .local v0, "isLastDepth":Z
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, "keyAtDepth":Ljava/lang/String;
    const-string v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 157
    .local v4, "isGlobstar":Z
    if-nez v4, :cond_6

    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    .line 159
    .local v5, "matches":Z
    :goto_2
    if-nez v0, :cond_4

    iget-object v6, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ne p2, v6, :cond_5

    invoke-direct {p0}, Lcom/airbnb/lottie/model/KeyPath;->endsWithGlobstar()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 162
    .end local v5    # "matches":Z
    :cond_6
    if-nez v0, :cond_7

    iget-object v5, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    add-int/lit8 v6, p2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_3

    :cond_7
    move v5, v1

    .line 163
    .local v5, "isGlobstarButNextKeyMatches":Z
    :goto_3
    if-eqz v5, :cond_a

    .line 164
    iget-object v6, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-eq p2, v6, :cond_8

    iget-object v6, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 165
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    if-ne p2, v6, :cond_9

    invoke-direct {p0}, Lcom/airbnb/lottie/model/KeyPath;->endsWithGlobstar()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v1, v2

    .line 164
    :cond_9
    return v1

    .line 168
    :cond_a
    if-eqz v0, :cond_b

    .line 169
    return v2

    .line 171
    :cond_b
    add-int/lit8 v6, p2, 0x1

    iget-object v7, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_c

    .line 173
    return v1

    .line 177
    :cond_c
    iget-object v1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    return-object v0
.end method

.method public incrementDepthBy(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "depth"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/KeyPath;->isContainer(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 131
    return v2

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_2

    .line 135
    return v1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x2

    return v0

    .line 141
    :cond_3
    return v1
.end method

.method public keysToString()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "depth"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/KeyPath;->isContainer(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    .line 106
    return v2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 109
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "**"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 110
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    return v2

    .line 111
    :cond_3
    :goto_0
    return v1
.end method

.method public propagateToChildren(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "depth"    # I

    .line 188
    const-string v0, "__container"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;
    .locals 1
    .param p1, "element"    # Lcom/airbnb/lottie/model/KeyPathElement;

    .line 80
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 81
    .local v0, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    iput-object p1, v0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 82
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyPath{keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resolved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
