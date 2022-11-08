.class public Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;
.super Ljava/lang/Object;
.source "QuickstepSystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/QuickstepSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSelectSource"
.end annotation


# instance fields
.field public final drawable:Landroid/graphics/drawable/Drawable;

.field public final intent:Landroid/content/Intent;

.field public final position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->view:Landroid/view/View;

    .line 98
    iput-object p2, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->drawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object p3, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->intent:Landroid/content/Intent;

    .line 100
    iput-object p4, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 101
    return-void
.end method
