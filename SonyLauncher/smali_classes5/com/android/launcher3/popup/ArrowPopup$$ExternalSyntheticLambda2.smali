.class public final synthetic Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/widget/LocalColorExtractor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/popup/ArrowPopup;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;Landroid/view/View;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/popup/ArrowPopup;

    iput-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;->f$2:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onColorsChanged(Landroid/util/SparseIntArray;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/popup/ArrowPopup;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;->f$2:[Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/popup/ArrowPopup;->lambda$initColorExtractionLocations$1$com-android-launcher3-popup-ArrowPopup(Landroid/view/View;[Landroid/view/View;Landroid/util/SparseIntArray;)V

    return-void
.end method
