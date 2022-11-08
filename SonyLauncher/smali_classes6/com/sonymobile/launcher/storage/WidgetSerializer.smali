.class public Lcom/sonymobile/launcher/storage/WidgetSerializer;
.super Lcom/sonymobile/launcher/storage/BaseSerializer;
.source "WidgetSerializer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 25
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;->createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;

    move-result-object v0

    .line 27
    .local v0, "value":Landroid/content/ContentValues;
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/launcher/data/AppWidgetItem;

    .line 28
    .local v1, "widgetItem":Lcom/sonymobile/launcher/data/AppWidgetItem;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appWidgetProvider"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getAppWidgetId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "appWidgetId"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    return-object v0
.end method
