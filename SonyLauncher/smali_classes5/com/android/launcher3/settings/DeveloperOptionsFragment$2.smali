.class Lcom/android/launcher3/settings/DeveloperOptionsFragment$2;
.super Ljava/lang/Object;
.source "DeveloperOptionsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/settings/DeveloperOptionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    .line 145
    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$2;->this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$2;->this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-static {v1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->-$$Nest$fgetmPreferenceScreen(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->-$$Nest$mfilterPreferences(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    .line 160
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 149
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 154
    return-void
.end method
