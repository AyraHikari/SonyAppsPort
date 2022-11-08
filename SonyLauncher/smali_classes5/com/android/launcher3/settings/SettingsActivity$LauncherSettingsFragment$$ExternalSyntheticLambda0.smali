.class public final synthetic Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->lambda$requestAccessibilityFocus$1(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
