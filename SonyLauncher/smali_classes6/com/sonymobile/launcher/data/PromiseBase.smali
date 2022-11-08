.class public abstract Lcom/sonymobile/launcher/data/PromiseBase;
.super Lcom/sonymobile/launcher/data/Item;
.source "PromiseBase.java"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/data/PromiseBase;)V
    .locals 1
    .param p1, "promiseBase"    # Lcom/sonymobile/launcher/data/PromiseBase;

    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/Item;-><init>(Lcom/sonymobile/launcher/data/Item;)V

    .line 39
    iget-object v0, p1, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/sonymobile/launcher/data/PromiseBase;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mClassName:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/sonymobile/launcher/data/PromiseBase;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mUser:Landroid/os/UserHandle;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 29
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/sonymobile/launcher/data/Item;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mClassName:Ljava/lang/String;

    .line 25
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mUser:Landroid/os/UserHandle;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    if-ne p0, p1, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/launcher/data/PromiseBase;

    .line 78
    .local v0, "that":Lcom/sonymobile/launcher/data/PromiseBase;
    iget-object v1, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 70
    .end local v0    # "that":Lcom/sonymobile/launcher/data/PromiseBase;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sonymobile/launcher/data/PromiseBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
