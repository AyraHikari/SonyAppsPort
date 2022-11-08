.class Lcom/android/launcher3/icons/PlaceHolderIconDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlaceHolderIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

.field final synthetic val$newIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/PlaceHolderIconDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$1;->this$0:Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    iput-object p2, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$1;->val$newIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable$1;->val$newIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74
    return-void
.end method
