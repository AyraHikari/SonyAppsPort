.class public Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;
.super Landroidx/preference/Preference;
.source "InterceptableSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mInterceptor:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0c00af

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0c00af

    .line 41
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0c00af

    .line 36
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mChecked:Z

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0901f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    .line 55
    iget-boolean v0, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mInterceptor:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;->onIntercept(Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->onClick()V

    :cond_0
    return p2
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->isChecked()Z

    move-result v0

    .line 76
    iput-boolean p1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mChecked:Z

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setInterceptor(Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->mInterceptor:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;

    return-void
.end method
