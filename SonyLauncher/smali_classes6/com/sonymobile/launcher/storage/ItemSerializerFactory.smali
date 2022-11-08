.class public Lcom/sonymobile/launcher/storage/ItemSerializerFactory;
.super Ljava/lang/Object;
.source "ItemSerializerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemSerializerFactory"


# instance fields
.field private final mSerializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/storage/BaseSerializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createContentValueFromItem(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "classname":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/storage/BaseSerializer;

    .line 45
    .local v1, "serializer":Lcom/sonymobile/launcher/storage/BaseSerializer;
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;->createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;

    move-result-object v2

    return-object v2

    .line 48
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No serializer for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ItemSerializerFactory"

    invoke-static {v3, v2}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    const/4 v2, 0x0

    return-object v2
.end method

.method public registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "serializer"    # Lcom/sonymobile/launcher/storage/BaseSerializer;

    .line 32
    iget-object v0, p0, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
