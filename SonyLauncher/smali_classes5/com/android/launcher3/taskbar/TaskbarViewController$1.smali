.class Lcom/android/launcher3/taskbar/TaskbarViewController$1;
.super Landroid/util/FloatProperty;
.source "TaskbarViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 397
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 412
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 413
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 414
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTranslationXForTaskbarAlignmentAnimation()F

    move-result v0

    .line 413
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 415
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1

    .line 416
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getTranslationXForTaskbarAlignmentAnimation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 418
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 397
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "v"    # F

    .line 401
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 402
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->setTranslationXForTaskbarAlignmentAnimation(F)V

    goto :goto_0

    .line 403
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1

    .line 404
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/folder/FolderIcon;->setTranslationForTaskbarAlignmentAnimation(F)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 408
    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 397
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
