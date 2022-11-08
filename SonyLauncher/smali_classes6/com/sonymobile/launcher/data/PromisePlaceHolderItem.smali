.class public Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;
.super Lcom/sonymobile/launcher/data/Item;
.source "PromisePlaceHolderItem.java"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/sonymobile/launcher/data/Item;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mPackageName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mClassName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 52
    return v0

    .line 54
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;

    .line 60
    .local v2, "that":Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;
    iget-object v3, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mClassName:Ljava/lang/String;

    iget-object v4, v2, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 55
    .end local v2    # "that":Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 66
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 67
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
