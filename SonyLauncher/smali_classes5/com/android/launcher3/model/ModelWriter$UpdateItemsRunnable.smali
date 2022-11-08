.class Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "ModelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateItemsRunnable"
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 509
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 510
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mValues:Ljava/util/ArrayList;

    .line 511
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    .line 512
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 518
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 519
    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 520
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 521
    .local v4, "itemId":I
    invoke-static {v4}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 522
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 524
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->updateItemArrays(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 518
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "itemId":I
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmContext(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.sonymobile.launcher.settings"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_1

    .line 529
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
