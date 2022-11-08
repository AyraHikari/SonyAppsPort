.class public Lcom/sonymobile/launcher/data/AppWidgetItem;
.super Lcom/sonymobile/launcher/data/Item;
.source "AppWidgetItem.java"


# instance fields
.field private final mAppWidgetId:I

.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 69
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 94
    invoke-direct {p0}, Lcom/sonymobile/launcher/data/Item;-><init>()V

    .line 95
    iput p1, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    .line 96
    iput-object p2, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 58
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/launcher/data/AppWidgetItem;)V
    .locals 1
    .param p1, "other"    # Lcom/sonymobile/launcher/data/AppWidgetItem;

    .line 78
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/Item;-><init>(Lcom/sonymobile/launcher/data/Item;)V

    .line 79
    iget v0, p1, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    iput v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    .line 80
    iget-object v0, p1, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 103
    new-instance v0, Lcom/sonymobile/launcher/data/AppWidgetItem;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(Lcom/sonymobile/launcher/data/AppWidgetItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 155
    return v0

    .line 156
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 157
    return v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 159
    return v1

    .line 160
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/launcher/data/AppWidgetItem;

    .line 161
    .local v2, "other":Lcom/sonymobile/launcher/data/AppWidgetItem;
    iget v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    iget v4, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    if-eq v3, v4, :cond_3

    .line 162
    return v1

    .line 163
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 164
    iget-object v3, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 165
    return v1

    .line 166
    :cond_4
    iget-object v4, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 167
    return v1

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 169
    iget-object v3, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 170
    return v1

    .line 171
    :cond_6
    iget-object v4, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 172
    return v1

    .line 173
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_8

    iget-object v0, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_8
    iget-object v3, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    return v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 142
    const/16 v0, 0x1f

    .line 143
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 144
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    add-int/2addr v2, v3

    .line 145
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 146
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 147
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/UserHandle;->hashCode()I

    move-result v4

    :cond_2
    add-int/2addr v1, v4

    .line 148
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
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

    iget-object v1, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mClassName:Ljava/lang/String;

    .line 179
    invoke-static {v1, v2}, Lcom/sonymobile/launcher/util/HomeDebug;->getShortComponentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/data/AppWidgetItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method
