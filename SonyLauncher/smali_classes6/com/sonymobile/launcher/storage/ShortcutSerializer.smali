.class public Lcom/sonymobile/launcher/storage/ShortcutSerializer;
.super Lcom/sonymobile/launcher/storage/BaseSerializer;
.source "ShortcutSerializer.java"


# static fields
.field private static final INTENT_URI_PARSING_FLAG:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 27
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/storage/BaseSerializer;->createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;

    move-result-object v0

    .line 29
    .local v0, "value":Landroid/content/ContentValues;
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/launcher/data/ShortcutItem;

    .line 30
    .local v1, "shortcutItem":Lcom/sonymobile/launcher/data/ShortcutItem;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ShortcutItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ShortcutItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 36
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ShortcutItem;->getPackageResourceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iconPackage"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/ShortcutItem;->getIconResourceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iconResource"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method
