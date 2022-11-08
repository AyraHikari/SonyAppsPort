.class public Lcom/sonymobile/launcher/storage/PromiseSerializer;
.super Lcom/sonymobile/launcher/storage/BaseSerializer;
.source "PromiseSerializer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 30
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;->createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;

    move-result-object v0

    .line 32
    .local v0, "value":Landroid/content/ContentValues;
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/launcher/data/PromiseBase;

    .line 33
    .local v1, "promiseBaseItem":Lcom/sonymobile/launcher/data/PromiseBase;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/PromiseBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 34
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    instance-of v4, p1, Lcom/sonymobile/launcher/data/PromiseWidgetItem;

    const-string v5, "restored"

    const-string v6, "itemType"

    if-eqz v4, :cond_1

    .line 38
    new-instance v3, Landroid/content/ComponentName;

    .line 39
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/PromiseBase;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/PromiseBase;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "appWidgetProvider"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const/16 v4, 0x23

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 42
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    .end local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    :goto_0
    return-object v0
.end method
