.class public Lcom/sonymobile/launcher/storage/ActivitySerializer;
.super Lcom/sonymobile/launcher/storage/BaseSerializer;
.source "ActivitySerializer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 24
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;->createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;

    move-result-object v0

    .line 26
    .local v0, "value":Landroid/content/ContentValues;
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/launcher/data/ActivityItem;

    .line 27
    .local v1, "activityItem":Lcom/sonymobile/launcher/data/ActivityItem;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ActivityItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "intent"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    return-object v0
.end method
