.class public Lcom/sonymobile/launcher/data/ActivityItem;
.super Lcom/sonymobile/launcher/data/Item;
.source "ActivityItem.java"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 72
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 52
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/launcher/data/ActivityItem;)V
    .locals 1
    .param p1, "activityItem"    # Lcom/sonymobile/launcher/data/ActivityItem;

    .line 81
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/Item;-><init>(Lcom/sonymobile/launcher/data/Item;)V

    .line 82
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 35
    invoke-direct {p0}, Lcom/sonymobile/launcher/data/Item;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    .line 43
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 89
    new-instance v0, Lcom/sonymobile/launcher/data/ActivityItem;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/data/ActivityItem;-><init>(Lcom/sonymobile/launcher/data/ActivityItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 133
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/data/ActivityItem;

    .line 137
    .local v2, "that":Lcom/sonymobile/launcher/data/ActivityItem;
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 133
    .end local v2    # "that":Lcom/sonymobile/launcher/data/ActivityItem;
    :cond_6
    :goto_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 113
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 145
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 147
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mClassName:Ljava/lang/String;

    .line 153
    invoke-static {v1, v2}, Lcom/sonymobile/launcher/util/HomeDebug;->getShortComponentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/launcher/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/ActivityItem;->getLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method
