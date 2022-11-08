.class Lcom/android/quickstep/views/SplitPlaceholderView$1;
.super Landroid/util/FloatProperty;
.source "SplitPlaceholderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/SplitPlaceholderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/SplitPlaceholderView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/SplitPlaceholderView;)Ljava/lang/Float;
    .locals 1
    .param p1, "splitPlaceholderView"    # Lcom/android/quickstep/views/SplitPlaceholderView;

    .line 46
    invoke-virtual {p1}, Lcom/android/quickstep/views/SplitPlaceholderView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/SplitPlaceholderView$1;->get(Lcom/android/quickstep/views/SplitPlaceholderView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/SplitPlaceholderView;F)V
    .locals 1
    .param p1, "splitPlaceholderView"    # Lcom/android/quickstep/views/SplitPlaceholderView;
    .param p2, "v"    # F

    .line 40
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/SplitPlaceholderView;->setVisibility(I)V

    .line 41
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/SplitPlaceholderView;->setAlpha(F)V

    .line 42
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/SplitPlaceholderView$1;->setValue(Lcom/android/quickstep/views/SplitPlaceholderView;F)V

    return-void
.end method
