.class public abstract Lcom/sonymobile/launcher/data/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field public static final INVALID_CONTAINER_ID:J = -0x1L

.field public static final INVALID_STORAGE_ID:J = -0x1L


# instance fields
.field protected mContainerId:J

.field private mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

.field private mStorageId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mStorageId:J

    .line 21
    iput-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/sonymobile/launcher/data/Item;)V
    .locals 2
    .param p1, "other"    # Lcom/sonymobile/launcher/data/Item;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mStorageId:J

    .line 21
    iput-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    .line 40
    iget-object v0, p1, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/data/Item;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 41
    iget-wide v0, p1, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    iput-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    .line 42
    return-void
.end method

.method public static containerToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "containerId"    # J

    .line 174
    long-to-int v0, p0

    packed-switch v0, :pswitch_data_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_0
    const-string v0, "desktop"

    return-object v0

    .line 176
    :pswitch_1
    const-string v0, "stage"

    return-object v0

    .line 177
    :pswitch_2
    const-string v0, "apptray"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copy()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/Item;->create()Lcom/sonymobile/launcher/data/Item;

    move-result-object v0

    .line 58
    .local v0, "item":Lcom/sonymobile/launcher/data/Item;
    return-object v0
.end method

.method public abstract create()Lcom/sonymobile/launcher/data/Item;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public getContainerId()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    return-wide v0
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public getLocation()Lcom/sonymobile/launcher/data/ItemLocation;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    return-object v0
.end method

.method protected getLocationString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    invoke-static {v1, v2}, Lcom/sonymobile/launcher/data/Item;->containerToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ItemLocation;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<no location>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public final getStorageId()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mStorageId:J

    return-wide v0
.end method

.method public abstract getUser()Landroid/os/UserHandle;
.end method

.method public isStored()Z
    .locals 4

    .line 87
    iget-wide v0, p0, Lcom/sonymobile/launcher/data/Item;->mStorageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContainerId(J)V
    .locals 0
    .param p1, "containerId"    # J

    .line 126
    iput-wide p1, p0, Lcom/sonymobile/launcher/data/Item;->mContainerId:J

    .line 127
    return-void
.end method

.method public setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/sonymobile/launcher/data/ItemLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/launcher/data/Item;->mLocation:Lcom/sonymobile/launcher/data/ItemLocation;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/data/ItemLocation;->set(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 154
    :goto_0
    return-void
.end method

.method public setStorageId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 78
    iput-wide p1, p0, Lcom/sonymobile/launcher/data/Item;->mStorageId:J

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/Item;->getLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
