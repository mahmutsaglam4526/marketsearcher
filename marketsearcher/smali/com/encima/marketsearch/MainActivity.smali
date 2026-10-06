.class public Lcom/encima/marketsearch/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/encima/marketsearch/MainActivity;->setContentView(I)V

    .line 19
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/encima/marketsearch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 20
    .local v1, "searchTerm":Landroid/widget/EditText;
    const-string v2, "Enter App Query Here!"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/encima/marketsearch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    .local v0, "search":Landroid/widget/Button;
    new-instance v2, Lcom/encima/marketsearch/MainActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/encima/marketsearch/MainActivity$1;-><init>(Lcom/encima/marketsearch/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
