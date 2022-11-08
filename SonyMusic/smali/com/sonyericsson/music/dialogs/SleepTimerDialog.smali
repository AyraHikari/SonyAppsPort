.class public Lcom/sonyericsson/music/dialogs/SleepTimerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SleepTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;,
        Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;
    }
.end annotation


# static fields
.field private static final KEY_SELECTED_OPTION:Ljava/lang/String; = "key_selected_option"

.field private static final NBR_OF_MILLISECONDS_PER_MINUTE:I = 0xea60

.field public static final TAG:Ljava/lang/String; = "sleeptimer_dialog"

.field private static final sButtonsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mRadioGroup:Landroid/widget/RadioGroup;

.field mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field mSleepTimerController:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    .line 98
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const v2, 0x7f09016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->FIFTEEN_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const v2, 0x7f09016f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->THIRTY_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const v2, 0x7f090170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->ONE_HOUR:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const v2, 0x7f090171

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isDebugBuild()Z

    move-result v0

    const v1, 0x7f090172

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    sget-object v2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    sget-object v2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_HOURS:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-void
.end method

.method private getRadioButtonId(Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;)I
    .locals 1

    .line 234
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f09016e

    :goto_0
    return p1
.end method

.method private initRadioButtons(Landroid/widget/RadioGroup;Landroid/content/Context;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 200
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 205
    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getRadioButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/dialogs/SleepTimerDialog;
    .locals 1

    .line 121
    new-instance v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method checkButtonWithSavedOption(Landroid/content/Context;J)V
    .locals 4

    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    if-nez v0, :cond_0

    .line 218
    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getSleepTimerValue(Landroid/content/Context;)J

    move-result-wide v0

    .line 217
    invoke-static {v0, v1}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->translateMillisToOption(J)Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    .line 223
    sget-object p2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 224
    invoke-virtual {p2}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide p2

    .line 223
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setSleepTimerValue(Landroid/content/Context;J)V

    .line 225
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->getRadioButtonId(Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    return-void
.end method

.method getOption(I)Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;
    .locals 3

    .line 240
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->sButtonsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p1

    .line 246
    :cond_1
    sget-object p1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "key_selected_option"

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 141
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b3

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1000e1

    .line 145
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f09020f

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/SleepTimerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->initRadioButtons(Landroid/widget/RadioGroup;Landroid/content/Context;)V

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSleepTimerController:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v1}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;->getDelayedPausedEndMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->checkButtonWithSavedOption(Landroid/content/Context;J)V

    :cond_1
    const v1, 0x7f1000c2

    .line 161
    new-instance v2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/SleepTimerDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1000bc

    .line 179
    new-instance v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$3;-><init>(Lcom/sonyericsson/music/dialogs/SleepTimerDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_selected_option"

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setSleepTimerController(Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSleepTimerController:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSleepTimerController:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSleepTimerController:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;

    .line 128
    invoke-interface {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;->getDelayedPausedEndMillis()J

    move-result-wide v0

    .line 127
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->checkButtonWithSavedOption(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
