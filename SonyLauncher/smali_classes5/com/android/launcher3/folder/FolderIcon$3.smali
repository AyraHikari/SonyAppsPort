.class Lcom/android/launcher3/folder/FolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 667
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 670
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->-$$Nest$fputmDotScaleAnim(Lcom/android/launcher3/folder/FolderIcon;Landroid/animation/Animator;)V

    .line 671
    return-void
.end method
