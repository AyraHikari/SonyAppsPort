.class public final synthetic Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:[I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    iput p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$3:[I

    iput-boolean p5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$3:[I

    iget-boolean v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$addToWorkspace$4$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    return-void
.end method
