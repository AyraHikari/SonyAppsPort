.class Lcom/android/launcher3/folder/PreviewItemManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewItemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewItemManager;->onFolderClose(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewItemManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/PreviewItemManager;

    .line 315
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$2;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager$2;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->-$$Nest$fgetmCurrentPageParams(Lcom/android/launcher3/folder/PreviewItemManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    return-void
.end method
