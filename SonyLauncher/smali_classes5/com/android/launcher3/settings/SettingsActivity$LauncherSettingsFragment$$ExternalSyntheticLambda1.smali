.class public final synthetic Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->lambda$onViewCreated$0(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
