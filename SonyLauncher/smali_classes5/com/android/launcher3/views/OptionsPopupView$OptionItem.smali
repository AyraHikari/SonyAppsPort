.class public Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
.super Ljava/lang/Object;
.source "OptionsPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/OptionsPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionItem"
.end annotation


# instance fields
.field public final clickListener:Landroid/view/View$OnLongClickListener;

.field public final eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/CharSequence;

.field public final labelRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "labelRes"    # I
    .param p3, "iconRes"    # I
    .param p4, "eventId"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p5, "clickListener"    # Landroid/view/View$OnLongClickListener;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p2, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->labelRes:I

    .line 287
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    .line 288
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 289
    iput-object p4, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 290
    iput-object p5, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "eventId"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p4, "clickListener"    # Landroid/view/View$OnLongClickListener;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->labelRes:I

    .line 296
    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    .line 297
    iput-object p2, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-object p3, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 299
    iput-object p4, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    .line 300
    return-void
.end method
