.class Lcom/android/launcher3/popup/ArrowPopup$1;
.super Ljava/lang/Object;
.source "ArrowPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/ArrowPopup;->addPreDrawForColorExtraction(Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/ArrowPopup;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/popup/ArrowPopup;

    .line 332
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup$1;, "Lcom/android/launcher3/popup/ArrowPopup$1;"
    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 335
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup$1;, "Lcom/android/launcher3/popup/ArrowPopup$1;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/ArrowPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->-$$Nest$minitColorExtractionLocations(Lcom/android/launcher3/popup/ArrowPopup;Lcom/android/launcher3/Launcher;)V

    .line 337
    const/4 v0, 0x1

    return v0
.end method
