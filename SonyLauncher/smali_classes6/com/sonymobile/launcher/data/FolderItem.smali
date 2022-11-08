.class public Lcom/sonymobile/launcher/data/FolderItem;
.super Lcom/sonymobile/launcher/data/Item;
.source "FolderItem.java"


# instance fields
.field private final mCustomizationId:Ljava/lang/String;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/data/FolderItem;)V
    .locals 1
    .param p1, "other"    # Lcom/sonymobile/launcher/data/FolderItem;

    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/Item;-><init>(Lcom/sonymobile/launcher/data/Item;)V

    .line 52
    iget-object v0, p1, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "customizationId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/sonymobile/launcher/data/Item;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addItem(Lcom/sonymobile/launcher/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 119
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/FolderItem;->getStorageId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 58
    new-instance v0, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/data/FolderItem;-><init>(Lcom/sonymobile/launcher/data/FolderItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 184
    return v0

    .line 185
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 186
    return v1

    .line 187
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 188
    return v1

    .line 189
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/data/FolderItem;

    .line 190
    .local v2, "other":Lcom/sonymobile/launcher/data/FolderItem;
    iget-object v3, p0, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 191
    iget-object v3, v2, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 192
    return v1

    .line 193
    :cond_3
    iget-object v4, v2, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    return v1

    .line 195
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 196
    iget-object v3, v2, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 197
    return v1

    .line 198
    :cond_5
    iget-object v4, v2, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 199
    return v1

    .line 201
    :cond_6
    iget-wide v3, p0, Lcom/sonymobile/launcher/data/FolderItem;->mContainerId:J

    iget-wide v5, v2, Lcom/sonymobile/launcher/data/FolderItem;->mContainerId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    .line 202
    return v1

    .line 205
    :cond_7
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, ""

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 165
    const/16 v0, 0x1f

    .line 166
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 167
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 168
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 169
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/sonymobile/launcher/data/FolderItem;->mContainerId:J

    iget-wide v5, p0, Lcom/sonymobile/launcher/data/FolderItem;->mContainerId:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 170
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public removeItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 127
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 130
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 132
    :cond_0
    return v0

    .line 134
    .end local v0    # "removed":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setStorageId(J)V
    .locals 2
    .param p1, "id"    # J

    .line 63
    invoke-super {p0, p1, p2}, Lcom/sonymobile/launcher/data/Item;->setStorageId(J)V

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/Item;

    .line 66
    .local v1, "item":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 67
    .end local v1    # "item":Lcom/sonymobile/launcher/data/Item;
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/FolderItem;->mCustomizationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/FolderItem;->getLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateItemPositions()V
    .locals 5

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "position":I
    iget-object v1, p0, Lcom/sonymobile/launcher/data/FolderItem;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 157
    .local v2, "item":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "position":I
    .local v4, "position":I
    iput v0, v3, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    .line 158
    .end local v2    # "item":Lcom/sonymobile/launcher/data/Item;
    move v0, v4

    goto :goto_0

    .line 160
    .end local v4    # "position":I
    :cond_0
    return-void
.end method
