.class Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemFocusIndicatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewSetListener"
.end annotation


# instance fields
.field private final mCallOnCancel:Z

.field private mCalled:Z

.field private final mItemToSet:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;Ljava/lang/Object;Z)V
    .locals 0
    .param p3, "callOnCancel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;, "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper<TT;>.ViewSetListener;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->this$0:Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 230
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 233
    iput-object p2, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mItemToSet:Ljava/lang/Object;

    .line 234
    iput-boolean p3, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mCallOnCancel:Z

    .line 235
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 239
    .local p0, "this":Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;, "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper<TT;>.ViewSetListener;"
    iget-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mCallOnCancel:Z

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 242
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 246
    .local p0, "this":Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;, "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper<TT;>.ViewSetListener;"
    iget-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mCalled:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->this$0:Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mItemToSet:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->setCurrentItem(Ljava/lang/Object;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 250
    :cond_0
    return-void
.end method
