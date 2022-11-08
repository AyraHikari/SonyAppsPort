.class Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "ModelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateItemRunnable"
.end annotation


# instance fields
.field private final mItem:Lcom/android/launcher3/model/data/ItemInfo;

.field private final mItemId:I

.field private final mWriter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/util/ContentWriter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V
    .locals 0
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/util/ContentWriter;",
            ">;)V"
        }
    .end annotation

    .line 490
    .local p3, "writer":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/util/ContentWriter;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 491
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    .line 492
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Ljava/util/function/Supplier;

    .line 493
    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    .line 494
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 498
    iget v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-static {v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 499
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmContext(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ContentWriter;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v3}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmContext(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->updateItemArrays(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 502
    return-void
.end method
